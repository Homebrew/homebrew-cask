cask 'melodics' do
  version '2.1.4451'
  sha256 'e6f328148141143cdd3a6d70b906a6d0fe24f55ea9110d59fc79c0b7acbd2754'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
