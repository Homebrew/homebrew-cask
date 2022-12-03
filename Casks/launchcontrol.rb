cask "launchcontrol" do
  if MacOS.version <= :catalina
    version "1.52.7,1959"
    sha256 "16c3d89e41a99cbf43e6996681358e8e7a4bc63fa770b9f8c0bc72c5356a0b8a"
  else
    version "2.0.2,2309"
    sha256 "5b7114f1bd8fcb1d7c8f33f627f96044c3764c4063ee217933accf7974b1a8bb"
  end

  url "https://www.soma-zone.com/download/files/LaunchControl-#{version.csv.first}.tar.xz"
  name "LaunchControl"
  desc "Create, manage and debug system- and user services"
  homepage "https://www.soma-zone.com/LaunchControl/"

  livecheck do
    url "https://www.soma-zone.com/LaunchControl/a/appcast-update-2.xml"
    strategy :sparkle
  end

  auto_updates true

  app "LaunchControl.app"

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
