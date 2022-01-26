cask "bbc-iplayer-downloads" do
  version "2.13.6"
  sha256 "476b8c70bf2e185c32d1e2beb68a6673e856a474213f00c5fbee0e67832f24ac"

  url "https://static.files.bbci.co.uk/iplayer-pc-download-app/releases/darwin-x64/BBCiPlayerDownloads-#{version}.dmg"
  name "BBC iPlayer Downloads"
  desc "Download programmes from the BBC iPlayer website"
  homepage "https://www.bbc.co.uk/iplayer/install"

  livecheck do
    url "https://downloads-app.iplayer.api.bbc.co.uk/stable/darwin-x64"
    strategy :header_match
  end

  depends_on macos: ">= :el_capitan"

  app "BBC iPlayer Downloads.app"
end
