cask "futubull" do
  version "11.8.1318,202108041002"
  sha256 "2af3d7a5718122515391e737a2572e177979a29426068ba74a2f9394b6f5d956"

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
