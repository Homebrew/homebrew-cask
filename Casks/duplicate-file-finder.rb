cask "duplicate-file-finder" do
  version "6.16.2,576"
  sha256 "a420cbcb060ee5542a800ba077c81d16da5b5b6e0421afbc05e8f9f802c1ea5f"

  url "https://nektony.com/pro-support/duplicates-finder-site/update/DFFS_v#{version.csv.first}b#{version.csv.second}.zip"
  name "Duplicate File Finder"
  desc "Find and remove unwanted duplicate files and folders"
  homepage "https://nektony.com/duplicate-finder-free"

  livecheck do
    url "https://nektony.com/pro-support/duplicates-finder-site/update/update.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Duplicate File Finder #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.nektony.Duplicate-File-Finder-SII",
    "~/Library/Application Support/com.nektony.Duplicate-File-Finder-SII",
    "~/Library/Caches/com.nektony.Duplicate-File-Finder-SII",
    "~/Library/Cookies/com.nektony.Duplicate-File-Finder-SII.binarycookies",
    "~/Library/Preferences/com.nektony.Duplicate-File-Finder-SII.plist",
  ]
end
