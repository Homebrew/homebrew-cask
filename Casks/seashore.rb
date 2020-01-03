cask 'seashore' do
  version '2.4.18'
  sha256 '3b5268493860857703fcd76c20e4c8102cc9df9e21b3cf1dd5e26cdc0d5ba37e'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
