cask "mission-control-plus" do
  version "1.27"
  sha256 "b52994e33ebbb05cddb6eea55b54fee377eed8a9e96a59d409ab11599de859d1"

  url "https://github.com/ronyfadel/MissionControlPlusReleases/releases/download/v#{version}/Mission.Control.Plus.tgz"
  name "Mission Control Plus"
  desc "Manage your windows in Mission Control"
  homepage "https://fadel.io/MissionControlPlus"

  depends_on :macos

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
