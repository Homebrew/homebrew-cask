cask "futubull" do
  version "11.3.928,202104142135"
  sha256 "ff7f56f18119c53971a6c314b8599c79a552eee31821544a0e5bd438b6761893"

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
