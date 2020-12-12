cask "bbc-iplayer-downloads" do
  version "2.12.10"
  sha256 "c50dbb2b744a93407fe83ed69565eef60389836b1689ea9db0fa68bdb0c2a10e"

  # static.files.bbci.co.uk/ was verified as official when first introduced to the cask
  url "https://static.files.bbci.co.uk/iplayer-pc-download-app/releases/darwin-x64/BBCiPlayerDownloads-#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://downloads-app.iplayer.api.bbc.co.uk/stable/darwin-x64"
  name "BBC iPlayer Downloads"
  homepage "https://www.bbc.co.uk/iplayer/install"

  app "BBC iPlayer Downloads.app"
end
