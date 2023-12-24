cask "music-manager" do
  version "1.0.635.372"
  sha256 :no_check

  url "https://dl.google.com/dl/androidjumper/mac/6350372/musicmanager.dmg"
  name "Google Play Music Manager"
  desc "Upload music to the Google Music library"
  homepage "https://play.google.com/music/listen"

  livecheck do
    url :url
    strategy :extract_plist
  end

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/4282
  app "MusicManager.app", target: "Music Manager.app"

  uninstall quit:   "com.google.musicmanager",
            delete: "~/Library/PreferencePanes/MusicManager.prefPane"

  zap trash: [
    "~/Library/Application Support/Google/MusicManager",
    "~/Library/Logs/MusicManager",
    "~/Library/Preferences/com.google.musicmanager.plist",
  ]
end
