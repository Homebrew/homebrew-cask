cask "airdisplay" do
  version "1.0.1"
  sha256 "04cabe96dd98aebd81214792d58defa97380746ec34b5034da780d38dde541ad"

  url "https://www.avatron.com/updates/software/airdisplay/ad#{version.before_comma.no_dots}.zip"
  name "Air Display"
  desc "Utility for using a tablet as a second monitor"
  homepage "https://avatron.com/applications/air-display/"

  livecheck do
    url "https://www.avatron.com/updates/software/airdisplay/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  pkg "Air Display Installer.pkg"

  uninstall pkgutil: [
    "com.avatron.pkg.AirDisplay",
    "com.avatron.pkg.AirDisplayHost2",
  ]
end
