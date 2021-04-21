cask "futubull" do
  version "11.3.918,202104121146"
  sha256 "743150eb3fa10a8fcec63473b57efb32276185d32aa52fdef88806e8c6e0b340"

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
