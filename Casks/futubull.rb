cask "futubull" do
  version "12.4.2308"
  sha256 "e821db2331c6bac8ba2c12773ae164be65af3be801d6821923f120331224a291"

  url "https://softwarefile.futunn.com/FTNNForMac_#{version}_Website.dmg"
  name "Futubull"
  name "FutuNiuniu"
  desc "Trading application"
  homepage "https://www.futunn.com/"

  livecheck do
    url "https://www.futunn.com/download/history?client=11"
    regex(/FTNNForMac[._-]v?(\d+(?:\.\d+)+)[._-]Website\.dmg/i)
  end

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "FutuNiuniu.app", target: "Futubull.app"

  zap trash: [
    "~/Library/Application Scripts/cn.futu.Niuniu",
    "~/Library/Containers/cn.futu.Niuniu",
  ]
end
