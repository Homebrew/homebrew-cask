cask "disk-diet" do
  version "5.6.3"
  sha256 "77a1c476fd0d9bb710b1fbccd45509a62f9839b5668a84c6336bdbbab0cda341"

  url "https://www.tunabellysoftware.com/resources/Disk%20Diet%20#{version}.dmg"
  name "Disk Diet"
  desc "Free up disk space"
  homepage "https://www.tunabellysoftware.com/disk_diet/"

  livecheck do
    url "https://www.tunabellysoftware.com/resources/sparkle/diskdiet.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Disk Diet.app"

  zap trash: [
    "/Library/LaunchDaemons/com.tunabellysoftware.DiskDietHelper.plist",
    "/Library/PrivilegedHelperTools/com.tunabellysoftware.DiskDietHelper",
    "~/Library/Application Support/Disk Diet",
    "~/Library/Caches/com.tunabellysoftware.diskdiet",
    "~/Library/HTTPStorages/com.tunabellysoftware.diskdiet",
    "~/Library/HTTPStorages/com.tunabellysoftware.diskdiet.binarycookies",
    "~/Library/Preferences/com.tunabellysoftware.diskdiet.plist",
    "~/Library/Saved Application State/com.tunabellysoftware.diskdiet.savedState",
  ]
end
