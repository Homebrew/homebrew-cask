cask 'mp3tag' do
  version '2.85'
  sha256 'cd311ad21726baa3907269d06aff76699b88406030dd254de662a41992b4b7ae'

  url "http://download.mp3tag.de/mp3tagv#{version.no_dots}-macOS-Wine.zip"
  name 'MP3TAG'
  homepage 'http://www.mp3tag.de/en/'

  app "mp3tagv#{version.no_dots}-macOS-Wine/Mp3tag.app"
end
