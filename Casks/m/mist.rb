cask "mist" do
  version "0.20.1"
  sha256 "45d53266264a3bb6f32656b569ffc3d05df0b7202516df4d320b37f8f0dae6e3"

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
