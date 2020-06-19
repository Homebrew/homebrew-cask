cask 'melodics' do
  version '2.1.4590'
  sha256 '5dcd55125d35351a07eb934a7168548fc0425385df19dc45e8f05d3d67c89350'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
