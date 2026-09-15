cask "omnidisksweeper" do
  version "1.16"
  sha256 "cea5153769290a17c11c58696ac9e32423e4128cec6565ef9a9b5f2c73b0df5c"

  url "https://downloads.omnigroup.com/software/macOS/11/OmniDiskSweeper-#{version}.dmg"
  name "OmniDiskSweeper"
  desc "Finds large, unwanted files and deletes them"
  homepage "https://www.omnigroup.com/more/"

  livecheck do
    url "https://update.omnigroup.com/appcast/com.omnigroup.OmniDiskSweeper"
    regex(/OmniDiskSweeper[._-]v?(\d+(?:\.\d+)+[a-z]?)\.dmg/i)
    strategy :sparkle do |item, regex|
      item.url[regex, 1]
    end
  end

  auto_updates true
  depends_on :macos

  app "OmniDiskSweeper.app"

  zap trash: [
    "~/Library/Application Scripts/com.omnigroup.OmniSoftwareUpdate.OSUCheckService",
    "~/Library/Caches/com.apple.helpd/Generated/OmniDiskSweeper Help*",
    "~/Library/Caches/com.omnigroup.OmniDiskSweeper",
    "~/Library/Containers/com.omnigroup.OmniSoftwareUpdate.OSUCheckService",
    "~/Library/Preferences/com.omnigroup.OmniDiskSweeper.plist",
    "~/Library/Preferences/com.omnigroup.OmniSoftwareUpdate.plist",
  ]
end
