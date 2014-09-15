class BbcIplayerDownloads < Cask
  version 'latest'
  sha256 :no_check

  url 'https://www.bbc.co.uk/iplayer/dm/downloads/mac/latest'
  homepage 'http://www.bbc.co.uk/iplayer/install'

  app 'BBC iPlayer Downloads.app'
end
