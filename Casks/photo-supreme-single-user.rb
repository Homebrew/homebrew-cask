cask "photo-supreme-single-user" do
  version "6"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://trial.idimager.com/PhotoSupreme_V#{version}.pkg"
  name "Photo Supreme Single User"
  desc "Digital Asset Management"
  homepage "https://www.idimager.com/home"

  pkg "PhotoSupreme_V#{version}.pkg"

  uninstall pkgutil: "com.idimager.idimagersu"
end
