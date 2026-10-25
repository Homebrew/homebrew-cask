cask "mission-control-plus" do
  version "1.29"
  sha256 "7261fb00579aca822b408d76042094812743b05c4143178089e71944deb3ea48"

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
