cask "syncplay" do
  version "1.6.6"
  sha256 "6037de6efef0505306e4a0ed6cf09d7f64206292dd5152942baddeaa790812f5"

  # github.com/Syncplay/syncplay/ was verified as official when first introduced to the cask
  url "https://github.com/Syncplay/syncplay/releases/download/v#{version}/Syncplay_#{version}.dmg"
  appcast "https://github.com/Syncplay/syncplay/releases.atom"
  name "Syncplay"
  homepage "https://syncplay.pl/"

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
