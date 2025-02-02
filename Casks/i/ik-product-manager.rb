cask "ik-product-manager" do
  version "1.1.7"
  sha256 "f6da9e2be46797bc0557617f7a6737e3e2d724aa4dc906c24ac6ca4d70beeac4"

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
