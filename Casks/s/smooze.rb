cask "smooze" do
  version "1.9.26"
  sha256 :no_check

  url "https://smooze.co/updates/Smooze.dmg"
  name "Smooze"
  desc "Animates scrolling and adds functionality to scroll-wheel mice"
  homepage "https://smooze.co/"

  deprecate! date: "2023-12-17", because: :discontinued

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Smooze.app"

  uninstall quit: "co.smooze.macos"

  zap trash: [
    "~/Library/Application Support/co.smooze.macos",
    "~/Library/Application Support/Smooze",
    "~/Library/Caches/co.smooze.macos",
    "~/Library/Caches/io.fabric.sdk.mac.data/co.smooze.macos",
    "~/Library/HTTPStorages/co.smooze.macos",
    "~/Library/HTTPStorages/co.smooze.macos.binarycookies",
    "~/Library/Preferences/co.smooze.macos.plist",
  ]
end
