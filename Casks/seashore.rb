cask 'seashore' do
  version '2.4.3'
  sha256 '38b317c33bb4de88c54c5bee64c4b446aca9026e3c9314e19339cfd26b1e40fa'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
