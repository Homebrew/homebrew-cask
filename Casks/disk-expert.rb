cask "disk-expert" do
  version "3.6.3,361"
  sha256 "c2786062fcfa1cfbfbf62eefa605dc0377b79a525ac73bb785b72a0d1732fe78"

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
