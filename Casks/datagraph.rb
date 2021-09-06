cask "datagraph" do
  version "4.7.1,58.1"
  sha256 :no_check

  url "https://www.visualdatatools.com/DataGraph/DataGraph.dmg"
  name "DataGraph"
  desc "Scientific/statistical graphing software"
  homepage "https://www.visualdatatools.com/DataGraph/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "DataGraph.app"
end
