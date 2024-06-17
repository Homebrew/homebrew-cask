cask "launchcontrol" do
  on_catalina :or_older do
    version "1.52.7"
    sha256 "760edc3f3238ecbbc9f0c14b17ced9ac2a46c46a4ed8feec6bfb532fced37b7e"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "2.6.1"
    sha256 "75804fee7582c52cebc91b6881d333bbcd980a6353163080b2b1d8ecc86bf403"

    livecheck do
      url "https://www.soma-zone.com/LaunchControl/a/appcast-update-#{version.major}.xml"
      strategy :sparkle, &:short_version
    end
  end

  url "https://www.soma-zone.com/download/files/LaunchControl-#{version}.tar.xz"
  name "LaunchControl"
  desc "Create, manage and debug system and user services"
  homepage "https://www.soma-zone.com/LaunchControl/"

  auto_updates true

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
