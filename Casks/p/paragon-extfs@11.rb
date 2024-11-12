cask "paragon-extfs@11" do
  version "11.8.612"
  sha256 :no_check

  url "https://dl.paragon-software.com/demo/trial_extfs.dmg"
  name "extFS for Mac by Paragon Software"
  desc "Read/write support for ext2/3/4 formatted volumes"
  homepage "https://www.paragon-software.com/home/extfs-mac/"

  livecheck do
    url :url
    strategy :extract_plist do |items|
      items["com.paragon-software.filesystems.extfs"]&.short_version
    end
  end

  conflicts_with cask: "paragon-extfs"
  depends_on macos: ">= :sierra"

  installer manual: "FSInstaller.app"

  uninstall launchctl: "com.paragon-software.extfs*",
            quit:      "com.paragon-software.extfs*",
            signal:    [
              ["KILL", "com.paragon-software.extfs.FSMenuApp"],
              ["KILL", "com.paragon-software.extfs.notification-agent"],
            ],
            kext:      "com.paragon-software.filesystems.extfs",
            pkgutil:   "com.paragon-software.pkg.extfs"

  zap trash: [
    "~/Library/Application Support/com.paragon-software.extfs.*",
    "~/Library/Caches/com.paragon-software.extfs.fsapp",
    "~/Library/HTTPStorages/com.paragon-software.extfs.*",
    "~/Library/Preferences/com.paragon-software.extfs.fsapp.plist",
    "~/Library/Saved Application State/com.paragon-software.extfs.fsapp.savedState",
    "~/Library/WebKit/com.paragon-software.extfs.fsapp",
  ]
end
