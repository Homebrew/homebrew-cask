cask 'faw-circle' do
  version '2.2.0-RC1'
  sha256 '249fb0456845f21bc858df5ac50e4810df60ce1f3bef43ffd0d5acb20f496e8a'

  url "https://futureaudioworkshop.com/wp-content/uploads/2018/10/Circle-#{version}-setup-macOS.zip"
  name 'FAW Circle'
  homepage 'https://futureaudioworkshop.com/circle/'

  pkg 'Circle².pkg'

  uninstall pkgutil: 'com.futureaudioworkshop.pkg.*'

  zap trash: '~/Library/Preferences/Circle2.settings'
end
