cask "syncplay" do
  version "1.7.0"
  sha256 "7b5955ed604966cc67e44e5f91b27b9d07cf3c373a459844bfd9a289f805eb65"

  url "https://github.com/Syncplay/syncplay/releases/download/v#{version}/Syncplay_#{version}.dmg",
      verified: "github.com/Syncplay/syncplay/"
  name "Syncplay"
  desc "Synchronises media players"
  homepage "https://syncplay.pl/"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :sierra"

  app "Syncplay.app"

  zap trash: [
    "~/.syncplay",
    "~/Library/Saved Application State/pl.syncplay.Syncplay.savedState",
    "~/Library/Preferences/com.syncplay.MoreSettings.plist",
    "~/Library/Preferences/com.syncplay.Interface.plist",
    "~/Library/Preferences/com.syncplay.MainWindow.plist",
    "~/Library/Preferences/pl.syncplay.Syncplay.plist",
    "~/Library/Preferences/com.syncplay.PlayerList.plist",
  ]
end
