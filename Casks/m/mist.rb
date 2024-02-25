cask "mist" do
  version "0.10"
  sha256 "9d7f2b1df18fc4f4ce118dabed212ce30f1ff990824535694503ae44c9102319"

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
