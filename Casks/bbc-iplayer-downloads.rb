cask :v1 => 'bbc-iplayer-downloads' do
  version '1.14.1'
  sha256 'a895f1473d9f0d8e9f185bb2a98c0cd56ccf0c4c9b05b8fe3ae705bcf88fcf40'

  # bbci.co.uk is the official download host per the vendor homepage
  url "http://a.files.bbci.co.uk/iplayer/downloads/BBC-iPlayer-Downloads-#{version}.dmg"
  name 'BBC iPlayer Downloads'
  appcast 'http://ipd-hq.cloud.bbc.co.uk/downloads/update.xml'
  homepage 'http://www.bbc.co.uk/iplayer/install'
  license :gratis

  app 'BBC iPlayer Downloads.app'
end
