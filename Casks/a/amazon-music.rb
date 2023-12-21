cask "amazon-music" do
  version "9.5.2.2478,24780926_1c962c14fdc55b2e347aeb3c3ffc5ee6"
  sha256 "4b89cfaeab9ad5d8b06b5b350d0fc5a409b47dffcaadf9b3ddc21cb56207881f"

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

  uninstall launchctl: [
              "com.amazon.music",
              "com.amazon.music.startup",
            ],
            quit:      [
              "com.amazon.music",
              "com.amazon.music-renderer",
            ],
            delete:    "/Applications/Amazon Music.app"

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
