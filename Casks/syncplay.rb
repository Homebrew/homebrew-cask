# typed: false
# frozen_string_literal: true

cask "syncplay" do
  version "1.6.8"
  sha256 "9fbe6d616865511bbf75daa24ae6eb1ec40797ef1123265c7c50a5d9f1421ea3"

  url "https://github.com/Syncplay/syncplay/releases/download/v#{version}/Syncp>
      verified: "github.com/Syncplay/syncplay/"
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
