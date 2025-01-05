cask "pallotron-yubiswitch" do
  version "0.17"
  sha256 "da18d8059e42dfe71abaa7211d7da80f4b5f7f0c1c18bad104bd11a0885b633f"

  url "https://github.com/pallotron/yubiswitch/releases/download/v#{version}/yubiswitch_#{version}.dmg"
  name "Yubiswitch"
  desc "Status bar application to enable/disable Yubikey Nano"
  homepage "https://github.com/pallotron/yubiswitch"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "yubiswitch.app"

  zap trash: [
    "/Library/LaunchDaemons/com.pallotron.yubiswitch.helper.plist",
    "/Library/PrivilegedHelperTools/com.pallotron.yubiswitch.helper",
    "~/Library/Preferences/com.pallotron.yubiswitch.plist",
  ]
end
