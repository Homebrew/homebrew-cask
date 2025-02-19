cask "istatistica-core" do
  version "1.0,202502191"
  sha256 "4c69487609e62487bc64e6b21b16edf38b2bf6f9f284dc5faeae4921209776c7"

  url "https://www.imagetasks.com/updates/iStatisticaCore#{version.csv.second}.zip"
  name "iStatistica Core"
  desc "System monitoring for Apple Silicon"
  homepage "https://www.imagetasks.com/istatistica/core/"

  livecheck do
    url "https://www.imagetasks.com/updates/istatisticacore.xml"
    strategy :sparkle
  end

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "iStatistica Core.app"

  uninstall launchctl: "com.imagetasks.iStatistica-Core-Helper",
            quit:      "com.imagetasks.iStatistica-Core-Helper",
            delete:    [
              "/Library/LaunchDaemons/com.imagetasks.iStatistica-Core-Helper.plist",
              "/Library/PrivilegedHelperTools/com.imagetasks.iStatistica-Core-Helper",
            ]

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.imagetasks.istatistica-core.sfl*",
    "~/Library/HTTPStorages/com.imagetasks.iStatistica-Core",
    "~/Library/Preferences/com.imagetasks.iStatistica-Core.plist",
    "~/Library/Saved Application State/com.imagetasks.iStatistica-Core.savedState",
  ]
end
