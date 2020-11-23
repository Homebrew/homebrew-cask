cask "smooze" do
  version "1.9.8"
  sha256 "b6db6a4292ae40c9d8f5fa0e7c80992f6d7305c61ba6e767dd6417ac4eae2053"

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
