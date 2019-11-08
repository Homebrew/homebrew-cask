cask 'melodics' do
  version '2.1.3758'
  sha256 '0bcf80e93458f29255585c477b72f472ab0916d1db4e309e1d8479a70c77405e'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
