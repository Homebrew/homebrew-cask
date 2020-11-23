cask "smooze" do
  version "1.9.9"
  sha256 "59030cba19b2e4822f48b89e10aaef8d54ccbdd498b58e5a415a0bcc758651bf"

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
