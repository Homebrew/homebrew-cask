cask "futubull" do
  version "11.6.1108,202105270957"
  sha256 "e9ade6f9874ff2548d1fc2de3ec2cfdf6eb76700554a48bb78ff1c29f012a058"

  url "https://softwarefile.futunn.com/FTNNForMac_#{version.before_comma}_#{version.after_comma}_Website.dmg"
  name "Futubull"
  name "FutuNiuniu"
  desc "Trading application"
  homepage "https://www.futunn.com/"

  livecheck do
    url "https://www.futunn.com/download/history?client=11"
    strategy :page_match do |page|
      match = page.match(%r{/FTNNForMac_(\d+(?:\.\d+)*)_(\d+)_Website\.dmg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "FutuNiuniu.app", target: "Futubull.app"
end
