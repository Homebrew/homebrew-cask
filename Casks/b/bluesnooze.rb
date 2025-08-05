cask "bluesnooze" do
  version "1.2"
  sha256 "075a8b7cf8f66d4f4002c62a1985a5d3fb043e3df09e7fd405e88ce24a96feb0"

  url "https://github.com/odlp/bluesnooze/releases/download/v#{version}/Bluesnooze.zip"
  name "Bluesnooze"
  desc "Prevents your sleeping computer from connecting to Bluetooth accessories"
  homepage "https://github.com/odlp/bluesnooze"

  depends_on macos: ">= :monterey"

  app "Bluesnooze.app"

  zap trash: [
    "~/Library/Application Scripts/com.oliverpeate.Bluesnooze",
    "~/Library/Application Scripts/com.oliverpeate.Bluesnooze-LaunchAtLoginHelper",
    "~/Library/Application Support/Bluesnooze",
    "~/Library/Containers/com.oliverpeate.Bluesnooze",
    "~/Library/Containers/com.oliverpeate.Bluesnooze-LaunchAtLoginHelper",
    "~/Library/Preferences/com.oliverpeate.Bluesnooze.plist",
  ]
end
