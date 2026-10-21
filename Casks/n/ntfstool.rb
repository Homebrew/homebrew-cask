cask "ntfstool" do
  version "4.7.2.10"
  sha256 "353b757595ec551d5c7651c92c7a7ce381fc7c0e8cb7a8619e025d8e1c95f84b"

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
