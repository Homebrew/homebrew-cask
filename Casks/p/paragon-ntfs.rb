cask "paragon-ntfs" do
  version "17.0.243"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://dl.paragon-software.com/demo/ntfsmac#{version.major}_trial.dmg"
  name "Microsoft NTFS for Mac by Paragon Software"
  desc "Read/write support for NTFS formatted volumes"
  homepage "https://www.paragon-software.com/home/ntfs-mac/"

  livecheck do
    url :url
    strategy :extract_plist do |items|
      items["com.paragon-software.filesystems.ntfs"]&.short_version
    end
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  installer manual: "FSInstaller.app"

  uninstall launchctl: "com.paragon-software.ntfs*",
            quit:      "com.paragon-software.ntfs*",
            signal:    [
              ["KILL", "com.paragon-software.ntfs.FSMenuApp"],
              ["KILL", "com.paragon-software.ntfs.notification-agent"],
            ],
            kext:      "com.paragon-software.filesystems.ntfs",
            pkgutil:   "com.paragon-software.pkg.ntfs"

  zap trash: [
    "~/Library/Application Support/com.paragon-software.ntfs.*",
    "~/Library/Caches/com.paragon-software.ntfs.fsapp",
    "~/Library/HTTPStorages/com.paragon-software.ntfs.*",
    "~/Library/Preferences/com.paragon-software.ntfs.*",
    "~/Library/Saved Application State/com.paragon-software.ntfs.fsapp.savedState",
    "~/Library/WebKit/com.paragon-software.ntfs.fsapp",
  ]
end
