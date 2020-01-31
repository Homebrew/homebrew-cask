cask 'seashore' do
  version '2.5.5'
  sha256 '0bf82e3a43b394896802ae8a4519ac017b3d8c8fbc6d37c4accfb4894d03fd31'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
