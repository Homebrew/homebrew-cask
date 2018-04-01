cask 'mp3tag' do
  version '2.87a'
  sha256 'ae28fc762dc645d938f72eb77982e9517cf128f9d96493f17cd74a993de6ce65'

  url "http://download.mp3tag.de/mp3tagv#{version.no_dots}-macOS-Wine.zip"
  name 'MP3TAG'
  homepage 'http://www.mp3tag.de/en/'

  app "mp3tagv#{version.no_dots}-macOS-Wine/Mp3tag.app"
end
