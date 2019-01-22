cask 'photo-supreme-single-user' do
  version '4.3.2,1901'
  sha256 '888aaf3e163264d23b04c029acdef1f0ada3058ac96045c8c3fc4a2ceba1c68a'

  url "https://trial.idimager.com/PhotoSupreme_V#{version.major}.pkg"
  name 'Photo Supreme Single User'
  homepage 'https://www.idimager.com/home'

  pkg "PhotoSupreme_V#{version.major}.pkg"

  uninstall pkgutil: 'com.idimager.idimagersu'
end
