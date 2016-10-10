cask 'fugenschnitzer' do
  version '08b2'
  sha256 'f904a28f7cfd78d53e7a63eeae05fbec674ad846dcdf0be0405c09078d834c54'

  url "https://downloads.sourceforge.net/fugenschnitzer/fugenschnitzer_#{version}_macosx_i386_en.dmg"
  appcast 'https://sourceforge.net/projects/fugenschnitzer/rss',
          checkpoint: '592a295cdda866a0320b4c63d665ed07a7f03a5f44b5bbe649b8a1c5c217f30d'
  name 'fugenschnitzer'
  homepage 'http://fugenschnitzer.sourceforge.net/main_en.html'

  app 'Fugenschnitzer.app'
end
