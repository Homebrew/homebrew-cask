cask "duplicate-file-finder" do
  version "8.5,935"
  sha256 "1ebc2a47388fe500b54cc33665897156e5b6fc6a60c1960211e3bd3150b3fb80"

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
