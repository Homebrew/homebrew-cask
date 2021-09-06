cask "disk-expert" do
  version "3.6.2,359"
  sha256 :no_check

  url "https://nektony.com/download/diskexpert/diskexpert.dmg"
  name "Disk Expert"
  desc "Disk space analyzer"
  homepage "https://nektony.com/disk-expert"

  livecheck do
    url "https://nektony.com/pro-support/disk-expert/update/update.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :yosemite"

  app "Disk Expert #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.nektony.Disk-Expert-SII",
    "~/Library/Application Support/Disk-Expert-SII",
    "~/Library/Caches/com.nektony.Disk-Expert-SII",
    "~/Library/Preferences/com.nektony.Disk-Expert-SII.plist",
    "~/Library/Cookies/com.nektony.Disk-Expert-SII.binarycookies",
  ]
end
