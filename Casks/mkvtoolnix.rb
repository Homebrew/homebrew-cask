class Mkvtoolnix < Cask
  version '7.1.0'
  sha256 '33a26c756b4763c781913b2db20a1419d530aad6919e63b4f4aa931f442e2310'

  url 'http://www.fosshub.com/download/Mkvtoolnix-7.1.0.dmg',
	:referer => 'http://www.fosshub.com/MKVToolNix.html'
  homepage 'http://www.bunkus.org/videotools/mkvtoolnix/'

  app 'Mkvtoolnix-7.1.0.app'
end
