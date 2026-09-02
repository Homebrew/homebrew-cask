cask "launchcontrol" do
  version "2.11"
  sha256 "d46eb1548e78e9f811e089bd23f0fffa0a5a8fc7f3ed297658cff53d2bf519e5"

  url "https://www.soma-zone.com/download/files/LaunchControl-#{version}.tar.xz"
  name "LaunchControl"
  desc "Create, manage and debug system and user services"
  homepage "https://www.soma-zone.com/LaunchControl/"

  livecheck do
    url "https://www.soma-zone.com/LaunchControl/a/appcast-update-#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :big_sur

  app "LaunchControl.app"
  binary "#{appdir}/LaunchControl.app/Contents/MacOS/fdautil"

  uninstall launchctl: "com.soma-zone.LaunchControl.Helper",
            quit:      [
              "com.soma-zone.JobWatch",
              "com.soma-zone.LaunchControl",
              "com.soma-zone.LicenseWindow",
              "com.soma-zone.QuickLaunch",
            ],
            delete:    "/Library/PrivilegedHelperTools/com.soma-zone.LaunchControl.Helper"

  zap trash: [
    "~/Library/Application Support/LaunchControl",
    "~/Library/Caches/com.apple.helpd/Generated/com.soma-zone.LaunchControl.help*",
    "~/Library/Caches/com.apple.helpd/Generated/LaunchControl Help*",
    "~/Library/Caches/com.soma-zone.LaunchControl",
    "~/Library/HTTPStorages/com.soma-zone.LaunchControl",
    "~/Library/Logs/LaunchControl",
    "~/Library/Preferences/com.soma-zone.LaunchControl.plist",
    "~/Library/Preferences/com.soma-zone.LaunchControl.shared.plist",
    "~/Library/Saved Application State/com.soma-zone.LaunchControl.savedState",
    "~/Library/WebKit/com.soma-zone.LaunchControl",
  ]
end
