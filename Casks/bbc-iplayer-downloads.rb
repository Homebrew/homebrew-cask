cask "bbc-iplayer-downloads" do
  version "2.13.2"
  sha256 "cfe932b8289b96a069bd969e83b9b8697cbaeae3cd004d64478b4ff681c9670e"

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
