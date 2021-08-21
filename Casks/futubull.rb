cask "futubull" do
  version "11.9.1408,202108191137"
  sha256 "8d473228b926820e554b3c28531e4a8ad1ddb59cc5e814745b6d237f84e57115"

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
