cask "screens-connect" do
  version "4.9.2,20577:1572284765"
  sha256 "008d543ff93fbe393cae9f55529fcd5e9ffeb241ac0f67eb7f4e1fc70a6d69e5"

  # dl.devmate.com/com.edovia.Screens-Connect/ was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.edovia.Screens-Connect/#{version.after_comma.before_colon}/#{version.after_colon}/ScreensConnect-#{version.after_comma.before_colon}.zip"
  appcast "https://updates.devmate.com/com.edovia.Screens-Connect.xml"
  name "Screens Connect"
  desc "Remote desktop software"
  homepage "https://screensconnect.com/en/"

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
