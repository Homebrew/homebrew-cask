cask "ik-product-manager" do
  version "1.1.16"
  sha256 "8240a9bd17f60442caa028fe827ce584a21ff9a2239829a97ed5f0f57eee82f9"

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
