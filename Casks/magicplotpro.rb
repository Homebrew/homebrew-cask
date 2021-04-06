cask "magicplotpro" do
  version "2.9.3"
  sha256 "897adc75fdb5ecf40696808a2b2ca39154238376ddbb05b4e791c53957c7a8df"

  url "https://magicplot.com/downloads/MagicPlotPro#{version}.zip"
  appcast "https://magicplot.com/wiki/release_notes"
  name "MagicPlot Pro"
  homepage "https://magicplot.com/"

  app "MagicPlotPro#{version}.app"
end
