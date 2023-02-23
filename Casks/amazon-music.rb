cask "amazon-music" do
  version "9.4.1,24150213_92b38a1e0250c9b09a53fc29f510a1d7"
  sha256 "eb890c6bd4cedc3a8187aa5cee424be8153c60dbaa2a8856e203504012fa261c"

  url "https://d2j9xt6n9dg5d3.cloudfront.net/mac/#{version.csv.second}/Amazon+Music+Installer.dmg",
      verified: "d2j9xt6n9dg5d3.cloudfront.net/mac/"
  name "Amazon Music"
  desc "Desktop client for Amazon Music"
  homepage "https://www.amazon.com/musicapps"

  livecheck do
    # The download page does not provide a version number
    # The version number of the artifact corresponds with the installer, not the application
    skip "No version information available"
  end

  auto_updates true

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
