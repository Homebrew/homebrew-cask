cask "boinc" do
  version "7.16.12"
  sha256 "72fa25fd0ea7a5816cffe2c46ee86b1bd0bac65d6d10c2ed02423a2b4cd81c90"

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
