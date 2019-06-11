cask 'melodics' do
  version '2.0.2868'
  sha256 '75e14fdf97aa1f0c109c4d4b64f688b01e08b14f200831a90a3d7eea74fa4851'

  url "https://web-cdn.melodics.com/download/MelodicsV#{version.major}.dmg"
  appcast "https://web-cdn.melodics.com/download/osxupdatescastv#{version.major}.xml"
  name 'Melodics'
  homepage 'https://melodics.com/'

  app 'Melodics.app'
end
