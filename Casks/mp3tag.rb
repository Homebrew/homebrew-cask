cask 'mp3tag' do
  version '2.82'
  sha256 'a74dfc61889240468b2d4c05c86a712a2c148162e777696782007f09c3c9f87b'

  url "http://download.mp3tag.de/mp3tagv#{version.no_dots}-MacOSX-Wine.zip"
  name 'MP3TAG'
  homepage 'http://www.mp3tag.de/en/'

  app "mp3tagv#{version.no_dots}-MacOSX-Wine/Mp3tag.app"
end
