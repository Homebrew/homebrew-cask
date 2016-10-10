cask 'mp3tag' do
  version '2.79'
  sha256 '15301427664658f3cd38f7156b1ff95891198d637a298baea68b236440581e80'

  url "http://download.mp3tag.de/mp3tagv#{version.no_dots}-MacOSX-Wine.zip"
  name 'MP3TAG'
  homepage 'http://www.mp3tag.de/en'

  app "mp3tagv#{version.no_dots}-MacOSX-Wine/Mp3tag.app"
end
