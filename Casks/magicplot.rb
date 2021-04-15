cask "magicplot" do
  version "3.0"
  sha256 "4b56ef31ff7b347d729b8ed958b2ec14affa031b4c27db653cdaa3618b57d710"

  url "https://magicplot.com/downloads/MagicPlot#{version}.zip"
  name "MagicPlot"
  desc "Software for nonlinear fitting, plotting and data analysis"
  homepage "https://magicplot.com/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(/href=.*?MagicPlot(\d+(?:\.\d+)*)\.zip/i)
  end

  app "MagicPlot#{version}.app"
end
