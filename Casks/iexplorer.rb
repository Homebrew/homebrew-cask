cask "iexplorer" do
  version "4.5.0,178"
  sha256 "9c30670bc13d2d29b2e91564da5dd7413310724d91406099b3b6e1e0cead3ed2"

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
end
