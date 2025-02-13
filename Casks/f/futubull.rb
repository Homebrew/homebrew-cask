cask "futubull" do
  version "15.3.10208"
  sha256 "11f6ec1e03d3020737f48cfef61fd7817e3b1043b7a250c8f589a6099e0e7179"

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

  depends_on macos: ">= :high_sierra"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "FutuNiuniu.app", target: "Futubull.app"

  zap trash: [
    "~/Library/Application Scripts/cn.futu.Niuniu",
    "~/Library/Containers/cn.futu.Niuniu",
  ]
end
