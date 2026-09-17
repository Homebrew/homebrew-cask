cask "pallotron-yubiswitch" do
  version "0.19"
  sha256 "974d7481b388fe79b03f1eea2c39f45a2f74051b774a489a00e2fe00c9df1b31"

  url "https://github.com/pallotron/yubiswitch/releases/download/v#{version}/yubiswitch_#{version}.dmg"
  name "Yubiswitch"
  desc "Status bar application to enable/disable Yubikey Nano"
  homepage "https://github.com/pallotron/yubiswitch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "yubiswitch.app"

  zap trash: [
    "/Library/LaunchDaemons/com.pallotron.yubiswitch.helper.plist",
    "/Library/PrivilegedHelperTools/com.pallotron.yubiswitch.helper",
    "~/Library/Preferences/com.pallotron.yubiswitch.plist",
  ]
end
