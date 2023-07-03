cask "bbc-iplayer-downloads" do
  version "2.13.13"
  sha256 "195c20760e0e1c2b7218b298324cf3042dfe56b1791d14ab8c2797ae2370b1f6"

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

  zap trash: [
        "~/Library/Application Support/BBCiPlayerDownloads",
        "~/Library/Caches/uk.co.bbc.iplayer.downloads*",
        "~/Library/HTTPStorages/uk.co.bbc.iplayer.downloads",
        "~/Library/Preferences/uk.co.bbc.iplayer.downloads.plist",
        "~/Library/Saved Application State/uk.co.bbc.iplayer.downloads.savedState",
      ],
      rmdir: "~/Movies/BBC iPlayer Downloads"
end
