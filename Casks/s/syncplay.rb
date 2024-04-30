cask "syncplay" do
  version "1.7.3"
  sha256 "a656a60c11fcc0f840a461ed38708310a1138e28eb385d0f7167da18996df1b9"

  url "https://github.com/Syncplay/syncplay/releases/download/v#{version}/Syncplay_#{version}.dmg",
      verified: "github.com/Syncplay/syncplay/"
  name "Syncplay"
  desc "Synchronises media players"
  homepage "https://syncplay.pl/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :sierra"

  app "Syncplay.app"

  zap trash: [
    "~/.syncplay",
    "~/Library/Preferences/com.syncplay.Interface.plist",
    "~/Library/Preferences/com.syncplay.MainWindow.plist",
    "~/Library/Preferences/com.syncplay.MoreSettings.plist",
    "~/Library/Preferences/com.syncplay.PlayerList.plist",
    "~/Library/Preferences/pl.syncplay.Syncplay.plist",
    "~/Library/Saved Application State/pl.syncplay.Syncplay.savedState",
  ]
end
