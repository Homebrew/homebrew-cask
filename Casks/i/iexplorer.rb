cask "iexplorer" do
  version "4.6.0,180"
  sha256 "1234ab31439a7f3a35ba2c77e7a65977b75d15fb15d823b322adcefb221eed0f"

  url "https://assets.macroplant.com/download/#{version.csv.second}/iExplorer-#{version.csv.first}.dmg"
  name "iExplorer"
  desc "iOS device backup software and file manager"
  homepage "https://macroplant.com/iexplorer"

  livecheck do
    url "https://macroplant.com/iexplorer/mac/v#{version.major}/appcast"
    strategy :sparkle do |item|
      "#{item.version},#{item.url[%r{/(\d+)/iExplorer-(?:\d+(?:\.\d+)*)\.dmg}, 1]}"
    end
  end

  app "iExplorer.app"

  caveats do
    requires_rosetta
  end
end
