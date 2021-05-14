cask "bbc-iplayer-downloads" do
  version "2.12.10"
  sha256 "c50dbb2b744a93407fe83ed69565eef60389836b1689ea9db0fa68bdb0c2a10e"

  url "https://static.files.bbci.co.uk/iplayer-pc-download-app/releases/darwin-x64/BBCiPlayerDownloads-#{version}.dmg"
  name "BBC iPlayer Downloads"
  homepage "https://www.bbc.co.uk/iplayer/install"

  livecheck do
    url "https://downloads-app.iplayer.api.bbc.co.uk/stable/darwin-x64"
    strategy :header_match
  end

  app "BBC iPlayer Downloads.app"
end
