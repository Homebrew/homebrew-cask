cask 'mp3tag' do
  version '2.80'
  sha256 'a44dc798e0e49fffa1b1f28e173cdba12bcb8599621246c8b002083c214479a3'

  url "http://download.mp3tag.de/mp3tagv#{version.no_dots}-MacOSX-Wine.zip"
  name 'MP3TAG'
  homepage 'http://www.mp3tag.de/en/'

  app "mp3tagv#{version.no_dots}-MacOSX-Wine/Mp3tag.app"
end
