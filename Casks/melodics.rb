cask 'melodics' do
  version '2.0.3006'
  sha256 '59ebc046efdc646b67b2b8bf2afa0faee01071d43bf9d4d7733a3941d4f57a01'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
