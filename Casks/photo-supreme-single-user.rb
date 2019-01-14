cask 'photo-supreme-single-user' do
  version '4.3.2,1857'
  sha256 '307baf0ce9411a0e612458e71b85ea6154f728a80dcc975628b5abfee0508ccf'

  url "https://trial.idimager.com/PhotoSupreme_V#{version.major}.pkg"
  name 'Photo Supreme Single User'
  homepage 'https://www.idimager.com/home'

  pkg "PhotoSupreme_V#{version.major}.pkg"

  uninstall pkgutil: 'com.idimager.idimagersu'
end
