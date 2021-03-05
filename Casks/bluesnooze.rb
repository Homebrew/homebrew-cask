cask "bluesnooze" do
  version "1.1"
  sha256 "377badb146885f71eb3aeae25036c4ef00b0a6c2a1627b575f54dfbc4569bfb1"

  url "https://github.com/odlp/bluesnooze/releases/download/v#{version}/Bluesnooze.zip"
  name "Bluesnooze"
  desc "Prevents your sleeping computer from connecting to Bluetooth accessories"
  homepage "https://github.com/odlp/bluesnooze"

  depends_on macos: ">= :mojave"

  app "Bluesnooze.app"

  zap trash: [
    "~/Library/Application Scripts/com.oliverpeate.Bluesnooze",
    "~/Library/Application Scripts/com.oliverpeate.Bluesnooze-LaunchAtLoginHelper",
    "~/Library/Containers/com.oliverpeate.Bluesnooze",
    "~/Library/Containers/com.oliverpeate.Bluesnooze-LaunchAtLoginHelper",
    "~/Library/Application Support/Bluesnooze",
    "~/Library/Preferences/com.oliverpeate.Bluesnooze.plist",
  ]
end
