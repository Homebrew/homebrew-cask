cask "screens-connect" do
  version "4.11,21653"
  sha256 "a0d1eb68b08d8a62765fb575115eb41fd8937217f756a64152cda61f385512b3"

  url "https://updates.edovia.com/com.edovia.screens.connect.mac/ScreensConnect_#{version.before_comma}b#{version.after_comma}.zip"
  name "Screens Connect"
  desc "Remote desktop software"
  homepage "https://edovia.com/en/screens-connect/"

  livecheck do
    url "https://updates.edovia.com/com.edovia.screens.connect.mac/appcast.xml"
    strategy :sparkle
  end

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
