cask "omnidisksweeper" do
  on_catalina :or_older do
    version "1.13"
    sha256 "bf572a47079cd4dea44f7ae2f14bb9a75e2548ad6066757d33564c21a0003821"

    url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniDiskSweeper-#{version}.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "1.16"
    sha256 "cea5153769290a17c11c58696ac9e32423e4128cec6565ef9a9b5f2c73b0df5c"

    url "https://downloads.omnigroup.com/software/macOS/11/OmniDiskSweeper-#{version}.dmg"

    livecheck do
      url "https://update.omnigroup.com/appcast/com.omnigroup.OmniDiskSweeper"
      regex(/OmniDiskSweeper[._-]v?(\d+(?:\.\d+)+[a-z]?)\.dmg/i)
      strategy :sparkle do |item, regex|
        item.url[regex, 1]
      end
    end
  end

  name "OmniDiskSweeper"
  desc "Finds large, unwanted files and deletes them"
  homepage "https://www.omnigroup.com/more/"

  auto_updates true

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
