cask 'mp3tag' do
  version '2.7.9'
  sha256 '15301427664658f3cd38f7156b1ff95891198d637a298baea68b236440581e80'

  url "http://download.mp3tag.de/mp3tagv#{version.delete('.')}-MacOSX-Wine.zip"
  name 'MP3TAG The universal tag editor.'
  homepage 'http://www.mp3tag.de/en'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app "mp3tagv#{version.delete('.')}-MacOSX-Wine/Mp3tag.app", target: 'Mp3tag.app'
end
