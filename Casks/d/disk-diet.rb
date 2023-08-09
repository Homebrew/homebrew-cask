cask "disk-diet" do
  version "5.5.1"
  sha256 "e4ab5d2e9d5935fdc85af9421ce805fa336291d4c83b748b62928699d852a3a7"

  url "https://www.tunabellysoftware.com/resources/Disk%20Diet%20#{version}.dmg"
  name "Disk Diet"
  desc "Free up disk space"
  homepage "https://www.tunabellysoftware.com/disk_diet/"

  livecheck do
    url "https://www.tunabellysoftware.com/resources/sparkle/diskdiet.xml"
    strategy :sparkle, &:short_version
  end

  app "Disk Diet.app"

  zap trash: [
    "/Library/LaunchDaemons/com.tunabellysoftware.DiskDietHelper.plist",
    "/Library/PrivilegedHelperTools/com.tunabellysoftware.DiskDietHelper",
    "~/Library/Application Support/Disk Diet",
    "~/Library/Caches/com.tunabellysoftware.diskdiet",
    "~/Library/Preferences/com.tunabellysoftware.diskdiet.plist",
  ]
end
