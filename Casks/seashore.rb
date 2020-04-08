cask 'seashore' do
  version '2.5.8'
  sha256 '96818260017d4f73bceffa69bb8a19476c118366c9355d7b175e6c41dfdd9f71'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
