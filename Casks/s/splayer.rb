cask "splayer" do
  version "4.9.4"
  sha256 "e91c8d39840039393d73a682e14ed5115dfa6f66ac582aeee482597525704fe5"

  url "https://github.com/chiflix/splayerx/releases/download/#{version}/SPlayer-#{version}.dmg"
  name "SPlayer"
  desc "Media player"
  homepage "https://splayer.org/"

  depends_on :macos

  app "SPlayer.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.splayer.splayerx.sfl*",
    "~/Library/Application Support/splayer",
    "~/Library/Caches/org.splayer.splayerx",
    "~/Library/Caches/org.splayer.splayerx.ShipIt",
    "~/Library/Caches/splayer-updater",
    "~/Library/HTTPStorages/org.splayer.splayerx",
    "~/Library/Logs/splayer",
    "~/Library/Preferences/org.splayer.splayerx.plist",
    "~/Library/Saved Application State/org.splayer.splayerx.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
