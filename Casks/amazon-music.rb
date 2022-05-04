cask "amazon-music" do
  version "9.0.2.2321,23210323_b843db15b1f88fd8c3172dcd7943c517"
  sha256 "f7e7537533d848da692b0c8ad3b9448a849cd4702719a03a50cd4a44cbe45fcb"

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
