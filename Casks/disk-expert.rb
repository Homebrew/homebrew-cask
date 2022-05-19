cask "disk-expert" do
  version "3.7.1,366"
  sha256 "ae2f6b7df2bbe14955a5451e30bdef22c1fe51cf0bd7b48da2cb4a9b5149c162"

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
