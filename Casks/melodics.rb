cask 'melodics' do
  version '2.0.2749'
  sha256 'e8a79fa8d76e412922be77d6a9f35541a0ca195576e4ed88aa77e1c0ffeaf6e0'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://api.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
