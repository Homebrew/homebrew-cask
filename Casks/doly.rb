cask 'doly' do
  version '2.14.0'
  sha256 'e33e695dbece9e07851d808e90d44429828d1c2b0832364cb470983b849e6d1d'

  url "http://doly.jp/download/doly-mac_#{version}.dmg"
  name 'Doly Ebook Reader'
  homepage 'http://doly.jp/'

  app 'Doly.app'
end
