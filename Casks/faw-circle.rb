cask 'faw-circle' do
  version '2.1.0-RC3'
  sha256 '8d5cbcddb79f05c5bc463889fada3fac773d277d4fb246beb1a38181ad751e93'

  url "http://futureaudioworkshop.com/downloads/Circle-#{version}-setup.dmg"
  name 'FAW Circle'
  homepage 'http://futureaudioworkshop.com/circle/'

  pkg 'Circle².pkg'

  uninstall pkgutil: 'com.futureaudioworkshop.pkg.*'

  zap trash: '~/Library/Preferences/Circle2.settings'
end
