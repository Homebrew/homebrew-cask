cask 'mp3tag' do
  version '2.81'
  sha256 '961299e8227be3bc9d944237430e659331b83438ebe27f49517f2b765a56b914'

  url "http://download.mp3tag.de/mp3tagv#{version.no_dots}-MacOSX-Wine.zip"
  name 'MP3TAG'
  homepage 'http://www.mp3tag.de/en/'

  app "mp3tagv#{version.no_dots}-MacOSX-Wine/Mp3tag.app"
end
