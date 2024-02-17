cask "smooze-pro" do
  version "2.0.72"
  sha256 :no_check

  url "https://smooze.co/pro/updates/SmoozePro.dmg"
  name "Smooze Pro"
  desc "Animates scrolling and adds functionality to scroll-wheel mice"
  homepage "https://smooze.co/"

  livecheck do
    url "https://smooze.co/pro/updates/update.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Smooze Pro.app"

  uninstall quit: "co.smoozepro.macos"

  zap trash: [
    "~/Library/Application Support/co.smoozepro.macos",
    "~/Library/Application Support/Smooze Pro",
    "~/Library/Caches/co.smoozepro.macos",
    "~/Library/HTTPStorages/co.smoozepro.macos",
    "~/Library/HTTPStorages/co.smoozepro.macos.binarycookies",
    "~/Library/Preferences/co.smoozepro.macos.plist",
  ]
end
