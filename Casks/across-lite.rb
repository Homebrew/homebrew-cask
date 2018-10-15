cask 'across-lite' do
  version '2.4.3'
  sha256 '4e3a60742e6700602014e9c23196cecba4ba40c00fcb0221e4c48d9f02883868'

  url "http://www.litsoft.com/across/alite/download/download.php/al#{version.no_dots}osx.dmg?os=macosx"
  name 'Across Lite'
  homepage 'http://www.litsoft.com/across/alite/download/'

  app 'Across Lite.app'
end
