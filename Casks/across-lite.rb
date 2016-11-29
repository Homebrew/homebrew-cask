cask 'across-lite' do
  version '2.3.1'
  sha256 '49720648b8eb766fa0fbdebfd98213cdec442565f36b62f6406f0ff1f1462c13'

  url "http://www.litsoft.com/across/alite/download/download.php/al#{version.no_dots}osx.dmg?os=macosx"
  name 'Across Lite'
  homepage 'http://www.litsoft.com/across/alite/download/'

  app 'Across Lite.app'
end
