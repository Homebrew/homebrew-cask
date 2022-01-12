cask "duplicate-file-finder" do
  version "6.14.5,541"
  sha256 "46d14bfecc0ce6e0bed8f6d2181645f5dc3a62a1c58d9f4c7e21c6b9a873785c"

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
