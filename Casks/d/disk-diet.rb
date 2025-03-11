cask "disk-diet" do
  version "5.6.2"
  sha256 "f5adbe02a706459967dfd387ffa29012305db9c19591fa66c3c974dca6442a4f"

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
