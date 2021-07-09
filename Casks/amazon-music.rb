cask "amazon-music" do
  version "8.6.0.2271,22710610_e91247c784977e6c258edc2ea5d1a151"
  sha256 "85d69d9a46296c43936344c1dccb009cbba90ca85c3d7b60620540aff3155ef8"

  url "https://morpho-releases.s3-us-west-2.amazonaws.com/mac/#{version.after_comma}/Amazon+Music+Installer.dmg",
      verified: "morpho-releases.s3-us-west-2.amazonaws.com/mac/"
  appcast "https://www.amazon.com/gp/dmusic/desktop/downloadPlayer",
          must_contain: version.after_comma
  name "Amazon Music"
  desc "Desktop client for Amazon Music"
  homepage "https://www.amazon.com/musicapps"

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
