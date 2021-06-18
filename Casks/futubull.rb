cask "futubull" do
  version "11.6.1118,202106071222"
  sha256 "8dd9fbeb950ac7862409be147e9549607bee1ae642ccf6f679b2c0554bc677c3"

  url "https://softwarefile.futunn.com/FTNNForMac_#{version.before_comma}_#{version.after_comma}_Website.dmg"
  name "Futubull"
  name "FutuNiuniu"
  desc "Trading application"
  homepage "https://www.futunn.com/"

  livecheck do
    url "https://www.futunn.com/download/history?client=11"
    strategy :page_match do |page|
      page.scan(%r{/FTNNForMac[._-]v?(\d+(?:\.\d+)*)[_-](\d+)[._-]Website\.dmg}i).map do |match|
        "#{match[0]},#{match[1]}"
      end
    end
  end

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "FutuNiuniu.app", target: "Futubull.app"
end
