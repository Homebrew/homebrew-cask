cask "holst" do
  version "0.0.6"
  sha256 "be4138e2ea413e234965b2227eaeb193f7f08463485bd63fea9bda2be7458fe2"

  url "https://storage.yandexcloud.net/holst-desktop-application/mac/Holst-#{version}-universal.dmg"
  name "Holst"
  desc "Online whiteboard for team collaboration"
  homepage "https://holst.so/"

  livecheck do
    url "https://storage.yandexcloud.net/holst-desktop-application/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Holst.app"

  zap trash: [
    "~/Library/Application Support/Holst",
    "~/Library/Caches/holst-desktop-app-updater",
    "~/Library/Logs/Holst",
    "~/Library/Preferences/com.holst.desktop.plist",
  ]
end
