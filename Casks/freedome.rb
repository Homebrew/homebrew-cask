cask "freedome" do
  version "2.39.6634.0"
  sha256 :no_check

  url "https://download.sp.f-secure.com/freedome/installer/2/Freedome.pkg"
  name "F-Secure Freedome"
  homepage "https://www.f-secure.com/en_US/web/home_us/freedome"

  pkg "Freedome.pkg"

  uninstall quit:      "com.fsecure.freedome.osx",
            pkgutil:   "com.f-secure.freedome*",
            launchctl: [
              "com.f-secure.freedome.gui",
              "com.f-secure.freedome.uninstall",
              "com.f-secure.fsvpn-service-helper.production",
              "com.f-secure.fsvpn-service.production",
              "com.f-secure.fsvpn-upstream.production",
            ]
end
