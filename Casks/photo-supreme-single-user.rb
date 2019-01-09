cask 'photo-supreme-single-user' do
  version '4.3.2'
  sha256 '9343e0872192e856efc97eba7203982e112853fcea69b4bc5b9b69bd3140cce5'

  url "https://trial.idimager.com/PhotoSupreme_V#{version.major}.pkg"
  name 'Photo Supreme Single User'
  homepage 'https://www.idimager.com/home'

  pkg "PhotoSupreme_V#{version.major}.pkg"

  uninstall pkgutil: 'com.idimager.idimagersu'
end
