cask "futubull" do
  version "15.0.9908"
  sha256 "9c46342bf8b22f0cabf730b6b16e1d2f4910bd6d94fdb9e2576186a134fe563a"

  url "https://softwaredownload.futunn.com/FTNNForMac_#{version}_Website.dmg",
      user_agent: :fake,
      referer:    "https://www.futunn.com/"
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
