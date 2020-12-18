cask "amazon-music" do
  version "8.1.0.2232,22321202_934ab0c687037a8f0f8d3b22b0883662"
  sha256 "1effafe77ed1d8cb96fb618f2862f3ec6cc0640c942347166839b7ada8604cea"

  url "https://morpho-releases.s3-us-west-2.amazonaws.com/mac/#{version.after_comma}/AmazonMusicInstaller.dmg",
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
    "~/Library/Preferences/com.amazon.music.plist",
    "~/Library/Application Support/Amazon Music",
  ]

  caveats <<~EOS
    If the app will not launch after installation, try

      brew uninstall --zap --cask #{token}
      brew install --cask #{token}

    then re-launch the app.
  EOS
end
