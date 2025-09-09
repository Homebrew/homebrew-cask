cask "disk-expert" do
  version "5.2.1,538"
  sha256 "f9707d340b9cdebe670294f05e7d1fb14d3232b25c36b141379fc24f479582c1"

  url "https://download.nektony.com/download/diskexpert/disk-space-analyzer.dmg?build=#{version.csv.second}"
  name "Disk Expert"
  desc "Disk space analyzer"
  homepage "https://nektony.com/disk-expert"

  livecheck do
    url "https://download.nektony.com/pro-support/v3/disk-expert/update/update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Disk Expert #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.nektony.Disk-Expert-SII*",
    "~/Library/Application Support/Disk-Expert-SII*",
    "~/Library/Caches/com.nektony.Disk-Expert-SII*",
    "~/Library/Cookies/com.nektony.Disk-Expert-SII.binarycookies",
    "~/Library/HTTPStorages/com.nektony.Disk-Expert-SII*",
    "~/Library/Preferences/com.nektony.Disk-Expert-SII*.plist",
    "~/Library/Saved Application State/com.nektony.Disk-Expert-SII*.savedState",
  ]
end
