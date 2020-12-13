cask "code42-crashplan" do
  version "8.2.1,1525200006821,77"
  sha256 "89af29fd387aef977ca1da175105d0861c2a39742dc87dd648ea330548570ae4"

  url "https://download.code42.com/installs/client-package-repository/#{version.before_comma}/#{version.after_comma.after_comma}/install/Code42_#{version.before_comma}_#{version.after_comma.before_comma}_#{version.after_comma.after_comma}_Mac.dmg",
      verified: "download.code42.com/"
  appcast "https://support.code42.com/Release_Notes"
  name "Code42 CrashPlan"
  desc "Endpoint backup and recovery"
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
