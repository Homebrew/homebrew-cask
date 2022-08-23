cask "disk-expert" do
  version "3.8.1,375"
  sha256 "6a59185ee84e362d19530ee4f4415ba71b018beded00682d33fd4c77941b8bcd"

  url "https://nektony.com/pro-support/disk-expert/update/update_#{version.csv.first}b#{version.csv.second}.zip"
  name "Disk Expert"
  desc "Disk space analyzer"
  homepage "https://nektony.com/disk-expert"

  livecheck do
    url "https://nektony.com/pro-support/disk-expert/update/update.xml"
    strategy :sparkle
  end

  app "Disk Expert #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.nektony.Disk-Expert-SII",
    "~/Library/Application Support/Disk-Expert-SII",
    "~/Library/Caches/com.nektony.Disk-Expert-SII",
    "~/Library/Cookies/com.nektony.Disk-Expert-SII.binarycookies",
    "~/Library/Preferences/com.nektony.Disk-Expert-SII.plist",
  ]
end
