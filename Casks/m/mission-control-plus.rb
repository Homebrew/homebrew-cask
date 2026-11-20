cask "mission-control-plus" do
  version "1.31"
  sha256 "6e15acec3cab3cf808c7ea7466d1962326420c7117725defdac2e00b21bccb92"

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
