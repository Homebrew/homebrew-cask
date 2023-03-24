cask "launchcontrol" do
  on_catalina :or_older do
    version "1.52.7"
    sha256 "16c3d89e41a99cbf43e6996681358e8e7a4bc63fa770b9f8c0bc72c5356a0b8a"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "2.3"
    sha256 "b7625d26132de66e4957a1c2f4269a92253db08d159fed48c3474640f28c930b"

    livecheck do
      url "https://www.soma-zone.com/LaunchControl/a/appcast-update-2.xml"
      strategy :sparkle, &:short_version
    end

    depends_on macos: ">= :big_sur"
  end

  url "https://www.soma-zone.com/download/files/LaunchControl-#{version}.tar.xz"
  name "LaunchControl"
  desc "Create, manage and debug system- and user services"
  homepage "https://www.soma-zone.com/LaunchControl/"

  auto_updates true

  app "LaunchControl.app"
  binary "#{appdir}/LaunchControl.app/Contents/MacOS/fdautil"

  uninstall delete:    "/Library/PrivilegedHelperTools/com.soma-zone.LaunchControl.Helper",
            launchctl: "com.soma-zone.LaunchControl.Helper",
            quit:      [
              "com.soma-zone.JobWatch",
              "com.soma-zone.LaunchControl",
              "com.soma-zone.LicenseWindow",
              "com.soma-zone.QuickLaunch",
            ]

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
