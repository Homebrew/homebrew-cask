cask "ik-product-manager" do
  version "1.1.9"
  sha256 "f5fed0baa5859c456a220eb10d17af84938a59302afac4f84efd4d4d9144a555"

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
