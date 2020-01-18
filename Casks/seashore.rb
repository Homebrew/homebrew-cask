cask 'seashore' do
  version '2.5.3'
  sha256 '35b70ee317b40ad5b66774b25e0880e76d87d5b695467bfcbe51cbea440d0a4c'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
