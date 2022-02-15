cask "amazon-music" do
  version "9.0.1.2313,2313210_06ff83521a054808062972e6c857ce4c"
  sha256 "9ac5f9cdb5d6281abfb7dd9f87ceba750b027b127a7f427c9240b8471f03144b"

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
