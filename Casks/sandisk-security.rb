cask "sandisk-security" do
  version "1.0.0.13"
  sha256 :no_check

  url "https://downloads.sandisk.com/downloads/sandisk-security-mac-1-0-0-13.dmg"
  name "SanDisk Security"
  desc "Password-protect the new (V2) versions of the SanDisk Extreme Portable SSD line"
  homepage "https://kb.sandisk.com/app/answers/detail/a_id/23374/~/sandisk-security-feature---general-faq"

  installer script: {
    executable: "exec/SanDisk Security Installer.app/Contents/MacOS/SanDisk Security Installer",
    args:       ["-silent"],
    sudo:       true,
  }

  uninstall script: {
    executable: "exec/SanDisk Security Installer.app/Contents/MacOS/SanDisk Security Installer",
    args:       ["-uninstall", "-silent"],
    sudo:       true,
  }, delete: "/Library/LaunchDaemons/com.wdc.SanDiskPrivilegedHelper.plist"

  zap trash: [
    "~/Library/Caches/com.wdc.branded.sandisksecurity",
    "~/Library/Caches/com.westerndigital.SanDiskSecurityInstaller",
    "~/Library/Preferences/com.wdc.branded.sandisksecurity.plist",
  ]
end
