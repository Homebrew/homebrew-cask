cask 'melodics' do
  version '2.0.2737'
  sha256 '456c15c5f057cb7f99db11487b9ae30b29e55f597cfceec8e84921140a7a0bde'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://api.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
