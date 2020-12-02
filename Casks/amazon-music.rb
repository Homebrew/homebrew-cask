cask "amazon-music" do
  version "8.0.0.2229,22291029_f175a7c624388fac90425033a604202d"
  sha256 "6797c6e044cbe62a59b6f3c9fa5152c2cfa3dff4b43e6230f0007f2b6e8d3272"

  # morpho-releases.s3-us-west-2.amazonaws.com/mac/ was verified as official when first introduced to the cask
  url "https://morpho-releases.s3-us-west-2.amazonaws.com/mac/#{version.after_comma}/AmazonMusicInstaller.dmg"
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
