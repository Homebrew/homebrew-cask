cask "futubull" do
  version "12.15.3428"
  sha256 "2b6629c3005182ae614d50e5a56c9c9652c1613fdfd8a8bc858e28d614b75047"

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
