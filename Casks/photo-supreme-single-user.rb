cask 'photo-supreme-single-user' do
  version '4.2.1'
  sha256 '8ec93633f3822ed5ead2153652add69cb76b830a6e2bb8f39011fb62d8e78aa0'

  url "https://trial.idimager.com/PhotoSupreme_V#{version.major}.pkg"
  name 'Photo Supreme Single User'
  homepage 'https://www.idimager.com/home'

  pkg "PhotoSupreme_V#{version.major}.pkg"

  uninstall pkgutil: 'com.idimager.idimagersu'
end
