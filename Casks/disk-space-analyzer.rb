cask "disk-space-analyzer" do
  version "3.6.1,358"
  sha256 :no_check

  url "https://nektony.com/download/diskexpert/diskexpert.dmg"
  name "disk-space-analyzer"
  desc "Nektony Disk Space Analyzer"
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
