cask "duplicate-file-finder" do
  version "9.2.1,1029"
  sha256 "22edb747f277d343cc68f3e358a85b1787be7d34dc29977dd359b54364e10d8a"

  url "https://download.nektony.com/download/duplicate-file-finder/duplicate-file-finder.dmg?build=#{version.csv.second}"
  name "Duplicate File Finder"
  desc "Find and remove unwanted duplicate files and folders"
  homepage "https://nektony.com/duplicate-finder-free"

  livecheck do
    url "https://download.nektony.com/pro-support/v3/duplicates-finder-site/update/update.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :big_sur

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
