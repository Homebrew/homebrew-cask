cask "ntfstool" do
  version "4.6.11"
  sha256 "0ff72d720506d7809fbf5931531aab1a3116154348b24963e62f57b4a1db5cd3"

  url "https://github.com/ntfstool/ntfstool/releases/download/#{version}/Ntfstool_#{version}_release.pkg"
  name "NTFSTool"
  desc "Utility that provides NTFS read and write support"
  homepage "https://ntfstool.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
