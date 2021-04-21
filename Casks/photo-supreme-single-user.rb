cask "photo-supreme-single-user" do
  version "4"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://trial.idimager.com/PhotoSupreme_V#{version}.pkg"
  name "Photo Supreme Single User"
  homepage "https://www.idimager.com/home"

  pkg "PhotoSupreme_V#{version}.pkg"

  uninstall pkgutil: "com.idimager.idimagersu"
end
