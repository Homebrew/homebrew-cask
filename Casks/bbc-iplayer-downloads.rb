cask "bbc-iplayer-downloads" do
  version "2.13.1"
  sha256 "b64c54f63d283975f1eaa40356c0c467a885dfdd585514eccc1776621306b47c"

  url "https://static.files.bbci.co.uk/iplayer-pc-download-app/releases/darwin-x64/BBCiPlayerDownloads-#{version}.dmg"
  name "BBC iPlayer Downloads"
  desc "Download programmes from the BBC iPlayer website"
  homepage "https://www.bbc.co.uk/iplayer/install"

  livecheck do
    url "https://downloads-app.iplayer.api.bbc.co.uk/stable/darwin-x64"
    strategy :header_match
  end

  depends_on macos: ">= :yosemite"

  app "BBC iPlayer Downloads.app"
end
