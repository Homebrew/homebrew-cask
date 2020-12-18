cask "screens-connect" do
  version "4.9.5,21585"
  sha256 "3cc7f6a4b51b42c98c387d54d2c62dbc408e5534f57117b48dc642ffd5e91351"

  url "https://updates.edovia.com/com.edovia.screens.connect.mac/ScreensConnect_#{version.before_comma}b#{version.after_comma}.zip"
  appcast "https://updates.edovia.com/com.edovia.screens.connect.mac/appcast.xml"
  name "Screens Connect"
  desc "Remote desktop software"
  homepage "https://edovia.com/en/screens-connect/"

  depends_on macos: ">= :el_capitan"

  app "Screens Connect.app"

  # Uninstall script can fail when trying to remove legacy PKGIDS
  # Original discussion: https://github.com/Homebrew/homebrew-cask/pull/8833
  uninstall quit:      "com.edovia.Screens-Connect",
            launchctl: [
              "com.edovia.Screens-Connect.launcher",
              "com.edovia.screens.connect",
            ],
            script:    {
              executable:   "#{appdir}/Screens Connect.app/Contents/Resources/sc-uninstaller.tool",
              must_succeed: false,
              sudo:         true,
            }

  zap trash: [
    "~/Library/Preferences/com.edovia.Screens-Connect.plist",
    "~/Library/Preferences/com.edovia.ScreensConnect.Shared.plist",
  ]
end
