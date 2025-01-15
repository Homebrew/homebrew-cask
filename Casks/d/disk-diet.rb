cask "disk-diet" do
  version "5.6.1"
  sha256 "74a4525d6dd6bf76470829f6aa3b24a6703a7a1373c1ce75a41ec7b46af77acd"

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
