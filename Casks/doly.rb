cask 'doly' do
  version '2.18.0'
  sha256 'b3f7a9074069cb8906d0b05195202d5f6f0ccba6e4d8ed9cfed87c06822b6c39'

  url "http://doly.jp/download/doly-mac_#{version}.dmg"
  appcast 'http://doly.jp/'
  name 'Doly Ebook Reader'
  homepage 'http://doly.jp/'

  app 'Doly.app'
end
