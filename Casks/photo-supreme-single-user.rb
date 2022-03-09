cask "photo-supreme-single-user" do
  version "6.7.2.4195"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://trial.idimager.com/PhotoSupreme_V#{version.major}.pkg"
  name "Photo Supreme Single User"
  desc "Digital Asset Management"
  homepage "https://www.idimager.com/home"

  livecheck do
    url "https://www.idimager.com/what-s-new-in-photo-supreme-v#{version.major}"
    regex(/>s*(\d+(?:\.\d+)+)[\s<]/i)
  end

  pkg "PhotoSupreme_V#{version.major}.pkg"

  uninstall pkgutil: "com.idimager.idimagersu"
end
