cask "pallotron-yubiswitch" do
  version "0.18"
  sha256 "79eee5f238f5a49763f928cc35670b7c757ffc6d051bd6dd06435cc5487c66e9"

  url "https://github.com/pallotron/yubiswitch/releases/download/v#{version}/yubiswitch_#{version}.dmg"
  name "Yubiswitch"
  desc "Status bar application to enable/disable Yubikey Nano"
  homepage "https://github.com/pallotron/yubiswitch"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "yubiswitch.app"

  zap trash: [
    "/Library/LaunchDaemons/com.pallotron.yubiswitch.helper.plist",
    "/Library/PrivilegedHelperTools/com.pallotron.yubiswitch.helper",
    "~/Library/Preferences/com.pallotron.yubiswitch.plist",
  ]
end
