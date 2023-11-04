cask "disk-expert" do
  version "3.8.2,376"
  sha256 "3478678a86c29bd086fd42a2fd1641b0f1b489586add2727f5045aeff7e5a1cb"

  url "https://nektony.com/pro-support/disk-expert/update/update_#{version.csv.first}b#{version.csv.second}.zip"
  name "Disk Expert"
  desc "Disk space analyzer"
  homepage "https://nektony.com/disk-expert"

  livecheck do
    url "https://download.nektony.com/pro-support/disk-expert/update/update.xml"
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
