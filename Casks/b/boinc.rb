cask "boinc" do
  version "7.24.2"
  sha256 "a7bd3c7fe1a73736b481d176a56875e587208f697f680e39eb0978f3db18e2a5"

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

  uninstall launchctl: [
              "edu.berkeley.boinc-sshelper",
              "edu.berkeley.launchBOINCManager",
            ],
            quit:      "edu.berkeley.boinc.finish-install",
            pkgutil:   "edu.berkeley.boinc"

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
