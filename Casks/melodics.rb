cask 'melodics' do
  version '2.0.2041'
  sha256 '0a6d4d3cbfee5fdd873a42fce0cd5824f88dcb863ce7c12de7f9c3d4fb8a4b0f'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://api.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
