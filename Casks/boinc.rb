cask "boinc" do
  version "7.20.7"
  sha256 "900d2b8d82abb3291abde183317a1f59d1279973d1baaac96d64ca065d57808d"

  url "https://boinc.berkeley.edu/dl/boinc_#{version}_macOSX_universal.zip"
  name "Berkeley Open Infrastructure for Network Computing"
  name "BOINC"
  desc "Downloads scientific computing jobs and runs them invisibly in the background"
  homepage "https://boinc.berkeley.edu/"

  livecheck do
    url "https://boinc.berkeley.edu/download.php"
    regex(%r{href=.*?/boinc[._-]v?(\d+(?:\.\d+)+)[._-]macOSX[._-]universal\.zip}i)
  end

  pkg "boinc_#{version}_macOSX_universal/BOINC Installer.app/Contents/Resources/BOINC.pkg"

  uninstall pkgutil:   "edu.berkeley.boinc",
            launchctl: [
              "edu.berkeley.boinc-sshelper",
              "edu.berkeley.launchBOINCManager",
            ],
            quit:      "edu.berkeley.boinc.finish-install"

  zap trash: [
    "/Library/Application Support/BOINC Data",
    "/Library/Screen Savers/BOINCSaver.saver",
    "~/Library/Application Support/BOINC",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/edu.berkeley.boinc.*.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/edu.berkeley.boinc.sfl*",
    "~/Library/Caches/edu.berkeley.boinc",
    "~/Library/Preferences/BOINC Manager Preferences",
    "~/Library/Preferences/edu.berkeley.boinc.plist",
    "~/Library/Saved Application State/edu.berkeley.boinc.savedState",
    "~/Library/WebKit/edu.berkeley.boinc",
  ]
end
