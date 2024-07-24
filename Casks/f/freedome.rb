cask "freedome" do
  version "2.71.176.0"
  sha256 :no_check

  url "https://download.sp.f-secure.com/freedome/installer/2/Freedome.pkg"
  name "F-Secure Freedome"
  desc "VPN client"
  homepage "https://www.f-secure.com/en_US/web/home_us/freedome"

  deprecate! date: "2024-07-15", because: :discontinued

  pkg "Freedome.pkg"

  uninstall launchctl: [
              "com.f-secure.freedome.gui",
              "com.f-secure.freedome.uninstall",
              "com.f-secure.fsvpn-ike-agent.production.macos",
              "com.f-secure.fsvpn-service-helper.production",
              "com.f-secure.fsvpn-service.production",
              "com.f-secure.fsvpn-upstream.production",
              "fsvpn-ike-agent.production.macos",
            ],
            quit:      "com.fsecure.freedome.osx",
            pkgutil:   "com.f-secure.freedome*"

  zap trash: [
    "/Library/LaunchDaemons/com.f-secure.freedome.uninstall.plist",
    "/Library/Preferences/com.f-secure.freedome.plist",
    "~/Library/Preferences/com.fsecure.freedome.osx.plist",
    "~/Library/Saved Application State/com.fsecure.freedome.osx.savedState",
  ]
end
