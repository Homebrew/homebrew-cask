cask "magicplotpro" do
  version "3.0"
  sha256 "4b56ef31ff7b347d729b8ed958b2ec14affa031b4c27db653cdaa3618b57d710"

  url "https://magicplot.com/downloads/MagicPlot#{version}.zip"
  name "MagicPlot Pro"
  homepage "https://magicplot.com/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/href=.*?MagicPlot(\d+(?:\.\d+)*)\.zip/i)
  end

  app "MagicPlotPro#{version}.app"
end
