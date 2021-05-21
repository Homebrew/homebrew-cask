cask "futubull" do
  version "11.5.1008,202105100950"
  sha256 "37babab32dcbd890cfb543b0825aefa657e1f51014435b7f84807ece436803f6"

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
