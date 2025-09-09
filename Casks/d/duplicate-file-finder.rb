cask "duplicate-file-finder" do
  version "8.5.1,936"
  sha256 "fd2b5cddd15e1414e4fb178a693e230de83ed882021dcc69e45645b197f7f4af"

  url "https://download.nektony.com/download/duplicate-file-finder/duplicate-file-finder.dmg?build=#{version.csv.second}"
  name "Duplicate File Finder"
  desc "Find and remove unwanted duplicate files and folders"
  homepage "https://nektony.com/duplicate-finder-free"

  livecheck do
    url "https://download.nektony.com/pro-support/v3/duplicates-finder-site/update/update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

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
