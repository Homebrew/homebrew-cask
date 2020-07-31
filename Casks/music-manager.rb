cask "music-manager" do
  version "1.0.635.372"
  sha256 "df5332024548f3e2995c66a3a5c861211014a3794d107c27fe3cde2065cc8937"

  url "https://dl.google.com/dl/androidjumper/mac/6350372/musicmanager.dmg"
  name "Google Play Music Manager"
  homepage "https://play.google.com/music/listen"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/4282
  app "MusicManager.app", target: "Music Manager.app"

  uninstall delete: "~/Library/PreferencePanes/MusicManager.prefPane",
            quit:   "com.google.musicmanager"

  zap trash: [
    "~/Library/Application Support/Google/MusicManager",
    "~/Library/Logs/MusicManager",
    "~/Library/Preferences/com.google.musicmanager.plist",
  ]
end
