cask 'doly' do
  version '2.16.0'
  sha256 '546b3d9ed07c854da3a378733db1f8646e24761f53286b79b5d8c530e0d59835'

  url "http://doly.jp/download/doly-mac_#{version}.dmg"
  appcast 'http://doly.jp/'
  name 'Doly Ebook Reader'
  homepage 'http://doly.jp/'

  app 'Doly.app'
end
