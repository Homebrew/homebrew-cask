class BbcIplayerDownloads < Cask
  version :latest
  sha256 :no_check

  url 'https://www.bbc.co.uk/iplayer/dm/downloads/mac/latest'
  appcast 'http://ipd-hq.cloud.bbc.co.uk/downloads/update.xml'
  homepage 'http://www.bbc.co.uk/iplayer/install'
  license :unknown

  app 'BBC iPlayer Downloads.app'
end
