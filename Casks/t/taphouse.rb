cask "taphouse" do
  version "1.5.9.1"
  sha256 "c36f51fd41b167e0f8f538ae589629e3b6cac232fea4705d7186ebb6c954e65f"

  url "https://taphouse.multimodalsolutions.gr/downloads/Taphouse-#{version}.dmg"
  name "Taphouse"
  desc "Native GUI for Homebrew package management"
  homepage "https://taphouse.multimodalsolutions.gr/"

  livecheck do
    url "https://taphouse.multimodalsolutions.gr/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Taphouse.app"

  uninstall quit: "com.multimodalsolutions.taphouse"

  zap trash: [
    "~/Library/Application Scripts/com.multimodalsolutions.taphouse.widget",
    "~/Library/Application Scripts/group.com.multimodalsolutions.taphouse",
    "~/Library/Application Support/Taphouse",
    "~/Library/Caches/com.multimodalsolutions.taphouse",
    "~/Library/Caches/Taphouse",
    "~/Library/Containers/com.multimodalsolutions.taphouse.widget",
    "~/Library/Group Containers/group.com.multimodalsolutions.taphouse",
    "~/Library/HTTPStorages/com.multimodalsolutions.taphouse",
    "~/Library/Preferences/com.multimodalsolutions.taphouse.plist",
  ]
end
