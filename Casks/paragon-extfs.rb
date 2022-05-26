cask "paragon-extfs" do
  version "11.6.237"
  sha256 :no_check

  url "https://dl.paragon-software.com/demo/trial_extfs.dmg"
  name "extFS for Mac by Paragon Software"
  desc "Read/write support for ext2/3/4"
  homepage "https://www.paragon-software.com/home/extfs-mac/"

  installer manual: "FSInstaller.app"

  uninstall kext:      "com.paragon-software.filesystems.extfs",
            launchctl: "com.paragon-software.extfs*",
            pkgutil:   "com.paragon-software.pkg.extfs",
            quit:      "com.paragon-software.extfs*",
            signal:    [
              ["KILL", "com.paragon-software.extfs.FSMenuApp"],
              ["KILL", "com.paragon-software.extfs.notification-agent"],
            ]

  zap trash: "~/Library/Preferences/com.paragon-software.extfs.fsapp.plist"
end
