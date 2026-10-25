cask "mission-control-plus" do
  version "1.30"
  sha256 "dc3612fd3da933e938683e1a475fdb637652f7b384d9c613a14ffc77bdcb0567"

  url "https://github.com/ronyfadel/MissionControlPlusReleases/releases/download/v#{version}/Mission.Control.Plus.tgz"
  name "Mission Control Plus"
  desc "Manage your windows in Mission Control"
  homepage "https://fadel.io/MissionControlPlus"

  depends_on macos: :monterey

  app "Mission Control Plus.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.fadel.missioncontrolplus.sfl*",
    "~/Library/Application Support/Mission Control Plus",
    "~/Library/Caches/io.fadel.MissionControlPlus",
    "~/Library/HTTPStorages/io.fadel.MissionControlPlus",
    "~/Library/HTTPStorages/io.fadel.MissionControlPlus.binarycookies",
    "~/Library/Preferences/io.fadel.MissionControlPlus.plist",
    "~/Library/Preferences/io.fadel.missioncontrolplus.preferences.plist",
  ]
end
