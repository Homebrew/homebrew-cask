cask 'fugenschnitzer' do
  version '08b2'
  sha256 'f904a28f7cfd78d53e7a63eeae05fbec674ad846dcdf0be0405c09078d834c54'

  url "https://downloads.sourceforge.net/fugenschnitzer/fugenschnitzer_#{version}_macosx_i386_en.dmg"
  appcast 'https://sourceforge.net/projects/fugenschnitzer/rss'
  name 'fugenschnitzer'
  homepage 'http://fugenschnitzer.sourceforge.net/main_en.html'

  app 'Fugenschnitzer.app'
end
