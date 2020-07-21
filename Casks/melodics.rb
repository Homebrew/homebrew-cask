cask 'melodics' do
  version '2.1.4797'
  sha256 '474de670a367380721a4c4b5b988ff2cf576b007425043d1f0881747b0c68af6'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
