cask "disk-expert" do
  version "3.7,364"
  sha256 "d02e23a66137e1c8270ad9ba8f6b5a219dfe05e1b90837d49fd9382edcdd00b6"

  url "https://nektony.com/pro-support/disk-expert/update/update_#{version.csv.first}b#{version.csv.second}.zip"
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
    "~/Library/Cookies/com.nektony.Disk-Expert-SII.binarycookies",
    "~/Library/Preferences/com.nektony.Disk-Expert-SII.plist",
  ]
end
