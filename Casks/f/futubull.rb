cask "futubull" do
  version "14.29.8708"
  sha256 "2ccea938bcdb7de78143854509de1ded8481ac0bb639565629cd071f49ccde7d"

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
