cask "duplicate-file-finder" do
  version "8.5.2,943"
  sha256 "51625f1eaaeb656d642373e8a50c1e5d6dc34aa2575f6620157b1df7276e2c4f"

  url "https://download.nektony.com/download/duplicate-file-finder/duplicate-file-finder.dmg?build=#{version.csv.second}"
  name "Duplicate File Finder"
  desc "Find and remove unwanted duplicate files and folders"
  homepage "https://nektony.com/duplicate-finder-free"

  livecheck do
    url "https://download.nektony.com/pro-support/v3/duplicates-finder-site/update/update.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Duplicate File Finder #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/com.nektony.Duplicate-File-Finder-SII*",
    "~/Library/Application Support/com.nektony.Duplicate-File-Finder-SII*",
    "~/Library/Caches/com.nektony.Duplicate-File-Finder-SII*",
    "~/Library/Cookies/com.nektony.Duplicate-File-Finder-SII.binarycookies",
    "~/Library/HTTPStorages/com.nektony.Duplicate-File-Finder-SII*",
    "~/Library/Preferences/com.nektony.Duplicate-File-Finder-SII*.plist",
    "~/Library/Saved Application State/com.nektony.Duplicate-File-Finder-SII*.savedState",
  ]
end
