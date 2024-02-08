cask "duplicate-file-finder" do
  version "6.17.3,588"
  sha256 "27a1aa5c6d4ebe8ef54b8baabb79041550ad460a366f89282f68bf5c3001d9a8"

  url "https://download.nektony.com/pro-support/duplicates-finder-site/update/dffs_v#{version.csv.first}b#{version.csv.second}.zip"
  name "Duplicate File Finder"
  desc "Find and remove unwanted duplicate files and folders"
  homepage "https://nektony.com/duplicate-finder-free"

  livecheck do
    url "https://download.nektony.com/pro-support/duplicates-finder-site/update/update.xml"
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
