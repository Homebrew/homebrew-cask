cask "duplicate-file-finder" do
  version "6.17.2,586"
  sha256 "3ce52dc70047eabd7c4ae6abca23749f8ab5d1d52d2c0ad1c51a9c1ba84bd9e3"

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
