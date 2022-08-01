cask "boinc" do
  version "7.20.2"
  sha256 "34bbcfca18915294e5da18110a0e8c302effa1dbe1ae0eca9dd5e40d3a8b3a98"

  url "https://boinc.berkeley.edu/dl/boinc_#{version}_macOSX_universal.zip"
  name "Berkeley Open Infrastructure for Network Computing"
  name "BOINC"
  desc "Downloads scientific computing jobs and runs them invisibly in the background"
  homepage "https://boinc.berkeley.edu/"

  livecheck do
    url "https://boinc.berkeley.edu/download.php"
    regex(%r{href=.*?/dl/boinc[._-]v?(\d+(?:\.\d+)+)_macOSX_universal\.zip}i)
  end

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
