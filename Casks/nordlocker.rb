cask "nordlocker" do
  version "4.4.0"
  sha256 "f86595d7e1b6fa554361895e08771d0e0dce719eba2c580e906e286c0b23116d"

  url "https://downloads.nordcdn.com/apps/macos/generic/NordLocker/#{version}/NordLocker.pkg",
      verified: "downloads.nordcdn.com/apps/macos/generic/NordLocker/"
  name "NordLocker"
  desc "Store and sync files securely"
  homepage "https://nordlocker.com/"

  livecheck do
    url "https://downloads.nordcdn.com/apps/macos/generic/NordLocker/latest/update_pkg.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "NordLocker.pkg"

  uninstall quit:       [
              "com.nordlocker.macos",
              "com.nordlocker.macos.launcher",
            ],
            launchctl:  [
              "com.nordlocker.macos.launcher",
              "com.nordlocker.nordfs.Mounter.Helper",
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
