cask 'mp3tag' do
  version '2.86'
  sha256 'cc5a51ab645ccd6db2a935b7b915ba9938e1ea2ec6138c84a357de32ae4a70a2'

  url "http://download.mp3tag.de/mp3tagv#{version.no_dots}-macOS-Wine.zip"
  name 'MP3TAG'
  homepage 'http://www.mp3tag.de/en/'

  app "mp3tagv#{version.no_dots}-macOS-Wine/Mp3tag.app"
end
