cask "disk-expert" do
  version "6.0.3,599"
  sha256 "ef8fb3773e72eaca557938a8351f4c80f1a4332608530977f80978919953ce2c"

  url "https://download.nektony.com/download/diskexpert/disk-space-analyzer.dmg?build=#{version.csv.second}"
  name "Disk Expert"
  desc "Disk space analyzer"
  homepage "https://nektony.com/disk-expert"

  livecheck do
    url "https://download.nektony.com/pro-support/v3/disk-expert/update/update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on :macos

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
