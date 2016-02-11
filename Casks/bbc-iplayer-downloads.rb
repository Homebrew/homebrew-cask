cask 'bbc-iplayer-downloads' do
  version '1.14.2'
  sha256 'feb02a935380805598b211a94c28466f0e064bfc938767ddc084a37a8c4719ee'

  # bbci.co.uk was verified as official when first introduced to the cask
  url "https://a.files.bbci.co.uk/iplayer/downloads/BBC-iPlayer-Downloads-#{version}.dmg"
  name 'BBC iPlayer Downloads'
  homepage 'http://www.bbc.co.uk/iplayer/install'
  license :gratis

  app 'BBC iPlayer Downloads.app'
end
