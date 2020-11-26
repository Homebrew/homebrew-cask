cask "boinc" do
  version "7.16.13"
  sha256 "a49c628e96493bf6e96d2358bdb098809ed495a5e16e2972c4f94922e84b699a"

  url "https://boinc.berkeley.edu/dl/boinc_#{version}_macOSX_universal.zip"
  appcast "https://www.macupdater.net/cgi-bin/extract_text/download_with_useragent.cgi?url=https://boinc.berkeley.edu/download.php&user_agent=Mac"
  name "Berkeley Open Infrastructure for Network Computing"
  name "BOINC"
  homepage "https://boinc.berkeley.edu/"

  pkg "boinc_#{version}_macOSX_universal/BOINC Installer.app/Contents/Resources/BOINC.pkg"

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
