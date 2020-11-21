cask "smooze" do
  version "1.9.7"
  sha256 "d2f8c7165bd2084837b88305e887c67eb7339d8c1ece05bc25fb0470acfc6550"

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
