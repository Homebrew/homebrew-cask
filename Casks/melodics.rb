cask 'melodics' do
  version '2.0.2573'
  sha256 'a0e4d64618ed3edf5e5f14f69ce8852d3d727c1ccee3e068848d8b86294de807'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://api.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
