cask "futubull" do
  version "11.13.1828,202112291010"
  sha256 "b92dda076e28ce4cbe38050581840920f08a6f73b0160247a72fb8f59bf22e1b"

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
