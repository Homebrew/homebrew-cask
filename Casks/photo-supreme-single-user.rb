cask 'photo-supreme-single-user' do
  version '4.3.2'
  sha256 '68f9180951e0e60f84bf425439bb581a670179888841158ce4fd07c4c74f48c1'

  url "https://trial.idimager.com/PhotoSupreme_V#{version.major}.pkg"
  name 'Photo Supreme Single User'
  homepage 'https://www.idimager.com/home'

  pkg "PhotoSupreme_V#{version.major}.pkg"

  uninstall pkgutil: 'com.idimager.idimagersu'
end
