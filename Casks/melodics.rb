cask 'melodics' do
  version '2.0.2679'
  sha256 '1cb9d301a5be1db43e653ca8640c69622f324f925da27a7d8453b88d5cd33310'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://api.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
