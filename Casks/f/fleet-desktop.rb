cask "fleet-desktop" do
  version "1.6.0"
  sha256 "739b67d0fb8ad8d1373d50df4680deceb53054d954761eccdfa54402621d9eca"

  url "https://download.fleetdm.com/fleet-desktop-macos/v#{version}/fleet_desktop-v#{version}.pkg"
  name "Fleet Desktop"
  desc "Self-service portal for devices managed by Fleet"
  homepage "https://fleetdm.com/guides/fleet-desktop"

  livecheck do
    url "https://github.com/fleetdm/fleet"
    regex(/^fleet-desktop-macos[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :ventura

  pkg "fleet_desktop-v#{version}.pkg"

  uninstall quit:    "com.fleetdm.fleet-desktop",
            pkgutil: "com.fleetdm.fleet-desktop"

  zap trash: [
    "~/Library/Application Scripts/com.fleetdm.fleet-desktop.pssoextension",
    "~/Library/Caches/com.fleetdm.fleet-desktop",
    "~/Library/Containers/com.fleetdm.fleet-desktop.pssoextension",
    "~/Library/HTTPStorages/com.fleetdm.fleet-desktop",
    "~/Library/HTTPStorages/com.fleetdm.fleet-desktop.binarycookies",
    "~/Library/Preferences/com.fleetdm.fleet-desktop.plist",
    "~/Library/Saved Application State/com.fleetdm.fleet-desktop.savedState",
    "~/Library/WebKit/com.fleetdm.fleet-desktop",
  ]
end
