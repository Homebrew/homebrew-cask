cask "nordlocker" do
  version "2.13.3,146"
  sha256 "99db2d8efe2970a26b5139e6a960a646498ad36b010c00276dbac2c30e817c3c"

  url "https://downloads.nordcdn.com/apps/macos/generic/NordLocker/#{version.before_comma}/NordLocker.pkg",
      verified: "https://downloads.nordcdn.com/"
  name "NordLocker"
  desc "Store and sync files securely"
  homepage "https://nordlocker.com/"

  livecheck do
    url "https://downloads.nordcdn.com/apps/macos/generic/NordLocker/latest/update_pkg.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "NordLocker.pkg"

  uninstall quit:       [
    "com.nordlocker.macos",
    "com.nordlocker.macos.launcher",
  ],
            launchctl:  [
              "com.nordlocker.nordfs.Mounter.Helper",
              "com.nordlocker.macos.launcher",
            ],
            delete:     "/Library/PrivilegedHelperTools/com.nordlocker.nordfs.Mounter.Helper",
            login_item: "NordLocker",
            pkgutil:    "com.nordlocker.macos"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nordlocker.macos.sfl2",
    "~/Library/Caches/com.nordlocker.macos",
    "~/Library/Cookies/com.nordlocker.macos.binarycookies",
    "~/Library/Preferences/com.nordlocker.macos.plist",
    "~/Library/Preferences/group.com.nordlocker.macos.firebase.plist",
    "~/Library/Saved Application State/com.nordlocker.macos.savedState",
    "~/Library/WebKit/com.nordlocker.macos",
  ]
end
