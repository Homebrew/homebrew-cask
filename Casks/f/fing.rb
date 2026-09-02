cask "fing" do
  on_arm do
    version "4.0.3"
    sha256 "a82600762d494916fe0caed28621123d26f56bf5e369c76b2460661919c3d1bb"

    url "https://get.fing.com/fing-desktop-releases/mac/Fing-#{version}-mac.zip"

    livecheck do
      url "https://get.fing.com/fing-desktop-releases/mac/latest-mac.yml"
      strategy :electron_builder
    end
  end
  on_intel do
    version "3.10.1"
    sha256 "f0ccdf3b1a57117dc08e4e6970aded3f453eae75d1e6d8b28aa7a590381eeacf"

    url "https://get.fing.com/fing-desktop-releases/mac/Fing-#{version}.dmg"

    livecheck do
      skip "Legacy version"
    end
  end

  name "Fing Desktop"
  desc "Network scanner"
  homepage "https://www.fing.com/desktop/"

  depends_on :macos

  app "Fing.app"

  uninstall launchctl: "com.fing.service"

  zap trash: [
    "~/Library/Application Support/Fing",
    "~/Library/Logs/Fing",
    "~/Library/Preferences/com.fing.app.plist",
    "~/Library/Saved Application State/com.fing.app.savedState",
  ]
end
