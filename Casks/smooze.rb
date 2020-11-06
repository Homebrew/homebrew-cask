cask "smooze" do
  version "1.9.6"
  sha256 "43a3ed3a485eceb00e7f5ef1f94c9c91017cdf87be00ef0184b4bcd4fbe0fdef"

  url "https://smooze.co/updates/Smooze.dmg"
  appcast "https://smooze.co/updates/update.xml"
  name "Smooze"
  homepage "https://smooze.co/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Smooze.app"

  uninstall quit: "co.smooze.macos"

  zap trash: [
    "~/Library/Application Support/co.smooze.macos",
    "~/Library/Application Support/Smooze",
    "~/Library/Caches/co.smooze.macos",
    "~/Library/Caches/io.fabric.sdk.mac.data/co.smooze.macos",
    "~/Library/Preferences/co.smooze.macos.plist",
  ]
end
