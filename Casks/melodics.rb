cask 'melodics' do
  version '2.0.2867'
  sha256 'c71e7820eeaab6c3b9e91dd8d07943c376100037a480ca9300e3c8b5d11bc90f'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
