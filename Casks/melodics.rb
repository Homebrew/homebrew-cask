cask 'melodics' do
  version '2.1.4374'
  sha256 '5a6a0a44522c8c463a5a44bce832fcb0374fcc85be11b66a34e79a44d688dbfa'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
