cask 'melodics' do
  version '2.0.1872'
  sha256 '41019fba93d7ef7fbb66b766b630fec9c971676ffe43078d494958df85745130'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://api.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
