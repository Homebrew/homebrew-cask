cask 'photo-supreme-single-user' do
  version '4.3.2'
  sha256 'c77370e4402750db00717c25bda55074d167797c94355c494fc3f83e24620db9'

  url "https://trial.idimager.com/PhotoSupreme_V#{version.major}.pkg"
  name 'Photo Supreme Single User'
  homepage 'https://www.idimager.com/home'

  pkg "PhotoSupreme_V#{version.major}.pkg"

  uninstall pkgutil: 'com.idimager.idimagersu'
end
