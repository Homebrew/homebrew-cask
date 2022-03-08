cask "futubull" do
  version "12.2.2118,202203031221"
  sha256 "3bb25070a58c1aa555bf9f525ed1d3e24f3e9c0bd8187ab7d9c47df75a1514a8"

  url "https://softwarefile.futunn.com/FTNNForMac_#{version.csv.first}_#{version.csv.second}_Website.dmg"
  name "Futubull"
  name "FutuNiuniu"
  desc "Trading application"
  homepage "https://www.futunn.com/"

  livecheck do
    url "https://www.futunn.com/download/history?client=11"
    strategy :page_match do |page|
      match = page.match(/FTNNForMac[._-]v?(\d+(?:\.\d+)+)[_-](\d+)[._-]Website.*?\.dmg/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "FutuNiuniu.app", target: "Futubull.app"

  zap trash: [
    "~/Library/Application Scripts/cn.futu.Niuniu",
    "~/Library/Containers/cn.futu.Niuniu",
  ]
end
