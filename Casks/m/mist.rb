cask "mist" do
  version "0.30"
  sha256 "a764f92e23f5a0a1776c5f08c7dbfe99e98ff5ed9feb12da10410cc09e9abefb"

  url "https://github.com/ninxsoft/Mist/releases/download/v#{version}/Mist.#{version}.pkg"
  name "Mist"
  desc "Utility that automatically downloads firmwares and installers"
  homepage "https://github.com/ninxsoft/Mist"

  auto_updates true
  depends_on macos: ">= :monterey"

  pkg "Mist.#{version}.pkg"

  uninstall launchctl: "com.ninxsoft.mist.helper",
            quit:      [
              "com.ninxsoft.mist",
              "com.ninxsoft.mist.helper",
            ],
            pkgutil:   "com.ninxsoft.pkg.mist",
            delete:    [
              "/Library/LaunchDaemons/com.ninxsoft.mist.helper.plist",
              "/Library/PrivilegedHelperTools/com.ninxsoft.mist.helper",
            ]

  zap trash: [
    "/Users/Shared/Mist",
    "~/Library/Caches/com.ninxsoft.mist",
    "~/Library/Preferences/com.ninxsoft.mist.plist",
    "~/Library/Saved Application State/com.ninxsoft.mist.savedState",
  ]
end
