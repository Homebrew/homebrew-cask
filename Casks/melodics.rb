cask 'melodics' do
  version '2.0.2842'
  sha256 '10a75f4070531731e57c6e691587bc394ceb8632986af97791a1e75dc5d2c50f'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://api.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
