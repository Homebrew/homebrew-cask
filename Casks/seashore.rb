cask 'seashore' do
  version '2.5.6'
  sha256 'e5bbcf319b95cb39e5510e00625aeda71411d2d2c7cd3765c03be4884932a800'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
