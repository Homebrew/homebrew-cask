cask "holst" do
  version "0.0.7"
  sha256 "6310c88757875a20db162a320da583140d258c5793bba3cfd6ef8c79c36832de"

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
