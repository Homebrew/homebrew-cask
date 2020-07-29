cask 'doly' do
  version '2.17.0'
  sha256 '80f111c59a04f3af2755a9826310430d53a85fa5386cfdfad6bf130ca51475d2'

  url "http://doly.jp/download/doly-mac_#{version}.dmg"
  appcast 'http://doly.jp/'
  name 'Doly Ebook Reader'
  homepage 'http://doly.jp/'

  app 'Doly.app'
end
