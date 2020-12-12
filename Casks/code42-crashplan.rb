cask "code42-crashplan" do
  version "8.2.1"
  sha256 "89af29fd387aef977ca1da175105d0861c2a39742dc87dd648ea330548570ae4"

  # download.code42.com/ was verified as official when first introduced to the cask
  url "https://download.code42.com/installs/client-package-repository/#{version}/77/install/Code42_#{version}_1525200006821_77_Mac.dmg"
  appcast "https://support.code42.com/Release_Notes"
  name "CrashPlan"
  homepage "https://www.crashplan.com/"

  auto_updates true

  pkg "Install Code42.pkg"

  uninstall launchctl: "com.backup42.desktop",
            pkgutil:   "com.code42.app.pkg",
            script:    {
              executable: "Uninstall.app/Contents/Resources/uninstall.sh",
              sudo:       true,
            }
end
