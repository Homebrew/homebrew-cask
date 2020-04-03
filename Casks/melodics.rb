cask 'melodics' do
  version '2.1.4141'
  sha256 '8c2e57306e123dda803044f5f82c4915361a5376ca1d6228934c2e03cf77efd2'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
