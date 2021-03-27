cask "slimbatterymonitor" do
  version "1.5"
  sha256 "587ce35b534c26b489b60d7f4ca71a96c1dcd83193a30c58676ae8d4665c6aff"

  url "http://quux.orange-carb.org/dist/SlimBatteryMonitor-#{version}.dmg"
  name "SlimBatteryMonitor"
  homepage "https://www.orange-carb.org/SBM/"

  livecheck do
    url "https://www.orange-carb.org/SBM/updates/sbm.xml"
    strategy :sparkle
  end

  app "SlimBatteryMonitor.app"
end
