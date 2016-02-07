cask 'faw-circle' do
  version '2.0.1'
  sha256 'aa201dd641f7270cdf791065ec0f855b2d6949f60243cbf9675e63318b4aefed'

  url "http://futureaudioworkshop.com/downloads/Circle-#{version}-setup.dmg"
  name 'FAW Circle'
  homepage 'http://futureaudioworkshop.com/circle'
  license :commercial

  pkg 'Circle².pkg'

  uninstall pkgutil: 'com.futureaudioworkshop.pkg.*'

  zap delete: '~/Library/Preferences/Circle2.settings'
end
