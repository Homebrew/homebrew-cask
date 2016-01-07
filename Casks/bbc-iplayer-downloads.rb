cask 'bbc-iplayer-downloads' do
  version '1.14.2'
  sha256 'feb02a935380805598b211a94c28466f0e064bfc938767ddc084a37a8c4719ee'

  # bbci.co.uk is the official download host per the vendor homepage
  url "https://a.files.bbci.co.uk/iplayer/downloads/BBC-iPlayer-Downloads-#{version}.dmg"
  appcast 'http://ipd-hq.cloud.bbc.co.uk/downloads/update.xml',
          :sha256 => 'beaca7e86fdda214f2ceff4d2b7902bebd3ebc998a363d3700c89fe4a2335fa2'
  name 'BBC iPlayer Downloads'
  homepage 'http://www.bbc.co.uk/iplayer/install'
  license :gratis

  app 'BBC iPlayer Downloads.app'
end
