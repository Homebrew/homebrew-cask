cask "bbc-iplayer-downloads" do
  version "2.13.10"
  sha256 "866e1aaec2d29fa2ab18afb1a95d1ab37d04e43bf978865cbf37df7e6452d7a4"

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
