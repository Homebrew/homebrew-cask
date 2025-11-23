cask "nordlocker" do
  version "4.26.1"
  sha256 :no_check

  url "https://downloads.nordcdn.com/apps/macos/generic/NordLocker/latest11plus/latest/NordLocker.pkg",
      verified: "downloads.nordcdn.com/apps/macos/generic/NordLocker/"
  name "NordLocker"
  desc "Store and sync files securely"
  homepage "https://nordlocker.com/"

  livecheck do
    url "https://downloads.nordcdn.com/apps/macos/generic/NordLocker/latest11plus/latest/update_pkg_11plus.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  pkg "NordLocker.pkg"

  uninstall launchctl:  [
              "com.nordlocker.macos.launcher",
              "com.nordlocker.nordfs.Mounter.Helper",
            ],
            quit:       [
              "com.nordlocker.macos",
              "com.nordlocker.macos.launcher",
            ],
            login_item: "NordLocker",
            pkgutil:    "com.nordlocker.macos",
            delete:     "/Library/PrivilegedHelperTools/com.nordlocker.nordfs.Mounter.Helper"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nordlocker.macos.sfl*",
    "~/Library/Caches/com.nordlocker.macos",
    "~/Library/Cookies/com.nordlocker.macos.binarycookies",
    "~/Library/Preferences/com.nordlocker.macos.plist",
    "~/Library/Preferences/group.com.nordlocker.macos.firebase.plist",
    "~/Library/Saved Application State/com.nordlocker.macos.savedState",
    "~/Library/WebKit/com.nordlocker.macos",
  ]
end
