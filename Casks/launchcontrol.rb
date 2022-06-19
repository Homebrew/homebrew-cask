cask "launchcontrol" do
  version "1.52.7,1959"
  sha256 "1f9039a66a8ac17573c6501a59bb01e02fd78ec70eea3316bff03f87370773e5"

  url "https://www.soma-zone.com/download/files/LaunchControl-#{version.csv.first}.tar.xz"
  name "LaunchControl"
  desc "Create, manage and debug system- and user services"
  homepage "https://www.soma-zone.com/LaunchControl/"

  livecheck do
    url "https://www.soma-zone.com/LaunchControl/a/appcast_update.xml"
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
    "~/Library/Preferences/com.soma-zone.LaunchControl.plist",
  ]
end
