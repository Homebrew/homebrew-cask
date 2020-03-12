cask 'melodics' do
  version '2.1.4119'
  sha256 '65bc86df8908c4081da901e33fcb85cb2a3f918176c7e963ddc7c83ac20c7a6d'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
