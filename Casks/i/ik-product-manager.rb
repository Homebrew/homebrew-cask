cask "ik-product-manager" do
  version "1.1.15"
  sha256 "23f7a167208c54c66461468f59efdf7b0d7308631d8f19157dda303092896e0b"

  url "https://g1.ikmultimedia.com/plugins/ProductManager/ik_product_manager_#{version}.dmg",
      referer:    "https://www.ikmultimedia.com/",
      user_agent: :fake
  name "IK Product Manager"
  desc "Tool for downloading and authorising IK Multimedia software"
  homepage "https://www.ikmultimedia.com/products/productmanager/"

  livecheck do
    url :homepage
    regex(/href=.*?ik[._-]product[._-]manager[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on :macos

  pkg "Install IK Product Manager (v#{version}).pkg"

  uninstall pkgutil: "com.ikmultimedia.productmanager",
            delete:  "/Library/Documentation/IK Multimedia/IK Product Manager"

  zap trash: [
    "~/Documents/IK Multimedia/IK Product Manager",
    "~/Library/Preferences/com.ikmultimedia.Product Manager.plist",
    "~/Library/Preferences/com.ikmultimedia.Product Manager.plist.lockfile",
    "~/Library/Saved Application State/com.ikmultimedia.productmanager.savedState",
  ]
end
