cask "smooze" do
  version "2.0.0,600"
  sha256 :no_check

  url "https://smooze.co/updates/Smooze.dmg"
  name "Smooze"
  desc "Rediscover your scroll wheel mouse"
  homepage "https://smooze.co/"

  livecheck do
    url "https://smooze.co/updates/update.xml"
    strategy :sparkle
  end

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
