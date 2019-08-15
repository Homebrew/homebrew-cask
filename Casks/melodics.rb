cask 'melodics' do
  version '2.1.3301'
  sha256 '340633a3479fb2b23043d525d73671145c86351f8571417a5219b9af8df9ee5d'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
