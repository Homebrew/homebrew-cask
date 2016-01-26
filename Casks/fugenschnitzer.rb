cask 'fugenschnitzer' do
  version '08b2'
  sha256 'f904a28f7cfd78d53e7a63eeae05fbec674ad846dcdf0be0405c09078d834c54'

  url "http://downloads.sourceforge.net/sourceforge/fugenschnitzer/fugenschnitzer_#{version}_macosx_i386_en.dmg"
  name 'fugenschnitzer'
  homepage 'http://fugenschnitzer.sourceforge.net/main_en.html'
  license :gpl

  app 'Fugenschnitzer.app'
end
