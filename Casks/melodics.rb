cask 'melodics' do
  version '2.1.3888'
  sha256 '1fb6312314c8e88f1758f3f61b753fdc162f8eb40e654b5ecf0eb531bdeaad2b'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
