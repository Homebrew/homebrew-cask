cask "boinc" do
  version "7.16.9"
  sha256 "6839fa9a179d4d09c411f8aaca2b7574e49dbd66918ccc1f56cba9e4929f6fa0"

  url "https://boinc.berkeley.edu/dl/boinc_#{version}_macOSX_x86_64.zip"
  appcast "https://boinc.berkeley.edu/wiki/Release_Notes",
          must_contain: version.major_minor
  name "Berkeley Open Infrastructure for Network Computing"
  name "BOINC"
  homepage "https://boinc.berkeley.edu/"

  pkg "boinc_#{version}_macOSX_x86_64/BOINC Installer.app/Contents/Resources/BOINC.pkg"

  uninstall pkgutil:   "edu.berkeley.boinc",
            launchctl: "edu.berkeley.boinc-sshelper"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/edu.berkeley.boinc.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/edu.berkeley.boinc.*.sfl*",
    "~/Library/Application Support/BOINC",
    "~/Library/Caches/edu.berkeley.boinc",
    "~/Library/Preferences/BOINC Manager Preferences",
    "~/Library/Preferences/edu.berkeley.boinc.plist",
    "/Library/Screen Savers/BOINCSaver.saver",
  ]
end
