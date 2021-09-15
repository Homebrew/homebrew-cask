cask "futubull" do
  version "11.9.1418,202109020944"
  sha256 "5d68ad6f536cf8e86f72560a6903b329a613de9a74eea3006ad6fd661ef1ef38"

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
