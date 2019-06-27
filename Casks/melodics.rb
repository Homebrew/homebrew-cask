cask 'melodics' do
  version '2.0.2952'
  sha256 'ef5aa21b7e74966728615f7b3567508ab207e7c4de036e69e5f007524bcd0d37'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
