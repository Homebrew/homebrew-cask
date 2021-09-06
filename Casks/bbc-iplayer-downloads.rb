cask "bbc-iplayer-downloads" do
  version "2.13.3"
  sha256 "d016814377a5f98664b5a6a60e2d240a1e548913d03971b5489260253b8cd3a9"

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
