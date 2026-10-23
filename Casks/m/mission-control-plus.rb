cask "mission-control-plus" do
  version "1.28"
  sha256 "c03dd602fb38e3bf74bede6f17640e0da05360be2eb5d3fc8c7cf572a00e61c6"

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
