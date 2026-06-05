cask "disk-expert" do
  version "6.0.1,565"
  sha256 "34b0a82027432ed342d2d079e243bef302d6100d4fe57c7c14469737b35ea859"

  url "https://download.nektony.com/download/diskexpert/disk-space-analyzer.dmg?build=#{version.csv.second}"
  name "Disk Expert"
  desc "Disk space analyzer"
  homepage "https://nektony.com/disk-expert"

  livecheck do
    url "https://download.nektony.com/pro-support/v3/disk-expert/update/update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :big_sur

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
