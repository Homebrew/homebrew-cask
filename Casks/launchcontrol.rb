cask "launchcontrol" do
  if MacOS.version <= :catalina
    version "1.52.7,1959"
    sha256 "760edc3f3238ecbbc9f0c14b17ced9ac2a46c46a4ed8feec6bfb532fced37b7e"

    livecheck do
      skip "Legacy version"
    end

    depends_on macos: "<= :catalina"
  else
    version "2.0.3,2310"
    sha256 "bd73e6836ba5b27df04b296d8a47df019e22e2bcc67619b11645a919c0f3dd8f"

    livecheck do
      url "https://www.soma-zone.com/LaunchControl/a/appcast-update-2.xml"
      strategy :sparkle
    end

    depends_on macos: ">= :big_sur"
  end

  url "https://www.soma-zone.com/download/files/LaunchControl-#{version.csv.first}.tar.xz"
  name "LaunchControl"
  desc "Create, manage and debug system- and user services"
  homepage "https://www.soma-zone.com/LaunchControl/"

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
