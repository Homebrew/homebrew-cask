cask 'melodics' do
  version '2.1.4271'
  sha256 '65b80cb31818231d8b0a7a943b4a57d6d240c37ad244ff23f67620c5943eaae5'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
