cask "amazon-music" do
  version "7.13.0.2210,942210_879fda15755939238e51727aa37ba627"
  sha256 "0a89c5d1360419c775e3800caf788b2687b991892223c712c8c2b68834590b67"

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

      brew cask zap #{token}
      brew cask install #{token}

    then re-launch the app.
  EOS
end
