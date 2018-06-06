cask 'mp3tag' do
  version '2.88a'
  sha256 '535e337fe5e1021e6c3490bca074102adf08ebc1432b3f77b53815e6f6cfddff'

  url "http://download.mp3tag.de/mp3tagv#{version.no_dots}-macOS-Wine.zip"
  name 'MP3TAG'
  homepage 'http://www.mp3tag.de/en/'

  app "mp3tagv#{version.no_dots}-macOS-Wine/Mp3tag.app"
end
