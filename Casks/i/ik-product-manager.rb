cask "ik-product-manager" do
  version "1.1.8"
  sha256 "30d05bd65d5068692c09030a943a254d09e76f59068d9a6c9c027b64adfcaae8"

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
