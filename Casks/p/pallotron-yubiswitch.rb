cask "pallotron-yubiswitch" do
  version "0.17"
  sha256 "48787eadef7df2383a508587ff93932f35800c146c808269def5db99f6dc869c"

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
