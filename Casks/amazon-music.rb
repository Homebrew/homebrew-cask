cask "amazon-music" do
  version "8.6.0.2271"
  sha256 :no_check

  url "https://www.amazon.com/gp/dmusic/desktop/downloadPlayer"
  name "Amazon Music"
  desc "Desktop client for Amazon Music"
  homepage "https://www.amazon.com/musicapps"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  container nested: "Amazon+Music+Installer.dmg"

  installer script: {
    executable: "Amazon Music Installer.app/Contents/MacOS/installbuilder.sh",
  }

  uninstall quit:      [
    "com.amazon.music",
    "com.amazon.music-renderer",
  ],
            delete:    "/Applications/Amazon Music.app",
            launchctl: [
              "com.amazon.music",
              "com.amazon.music.startup",
            ]

  zap trash: [
    "~/Library/Application Support/Amazon Music",
    "~/Library/LaunchAgents/com.amazon.music.plist",
    "~/Library/LaunchAgents/com.amazon.music.startup.plist",
    "~/Library/Preferences/com.amazon.music-renderer.plist",
    "~/Library/Preferences/com.amazon.music.plist",
    "~/Library/Saved Application State/com.amazon.music.savedState",
  ]

  caveats <<~EOS
    If the app will not launch after installation, try

      brew uninstall --zap --cask #{token}
      brew install --cask #{token}

    then re-launch the app.
  EOS
end
