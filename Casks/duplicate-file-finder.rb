cask "duplicate-file-finder" do
  version "6.16,573"
  sha256 "e4e0d8404b048582a66c1407fb3a6b633572ff9154c3ac23f05b9144b6275a68"

  url "https://nektony.com/pro-support/duplicates-finder-site/update/DFFS_v#{version.csv.first}b#{version.csv.second}.zip"
  name "Duplicate File Finder"
  desc "Find and remove unwanted duplicate files and folders"
  homepage "https://nektony.com/duplicate-finder-free"

  livecheck do
    url "https://nektony.com/pro-support/duplicates-finder-site/update/update.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :yosemite"

  app "Duplicate File Finder #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.nektony.Duplicate-File-Finder-SII",
    "~/Library/Application Support/com.nektony.Duplicate-File-Finder-SII",
    "~/Library/Caches/com.nektony.Duplicate-File-Finder-SII",
    "~/Library/Cookies/com.nektony.Duplicate-File-Finder-SII.binarycookies",
    "~/Library/Preferences/com.nektony.Duplicate-File-Finder-SII.plist",
  ]
end
