cask 'seashore' do
  version '2.1.6'
  sha256 '08b77eb56e242dda7c0cb41a4249d915527857c319a97137a9d6c19ad2092a36'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
