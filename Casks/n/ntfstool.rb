cask "ntfstool" do
  version "4.7.2.15"
  sha256 "8140e4f2a75faeeed685b04ad0f255e1a365519efb5cfe04782716c35da488e2"

  url "https://github.com/ntfstool/ntfstool/releases/download/#{version}/Ntfstool_#{version}_release.pkg"
  name "NTFSTool"
  desc "Utility that provides NTFS read and write support"
  homepage "https://ntfstool.com/"

  auto_updates true
  depends_on :macos

  pkg "Ntfstool_#{version}_release.pkg"

  uninstall launchctl: [
              "com.ntfsservice.helper",
              "com.ntfstool.ntfsservice",
            ],
            quit:      "com.ntfstool.aile",
            pkgutil:   "com.ntfstool.aile",
            delete:    [
              "/Applications/Ntfstool.app",
              "/Library/LaunchDaemons/com.ntfsservice.helper.plist",
              "/Library/LaunchDaemons/com.ntfstool.ntfsservice.plist",
              "/Library/PrivilegedHelperTools/com.apple.ntfs.system-helper",
            ]

  zap trash: [
    "/Library/Application Support/com.ntfsservice.helper",
    "/Library/Application Support/ntfstool",
    "~/.ntfstool",
  ]
end
