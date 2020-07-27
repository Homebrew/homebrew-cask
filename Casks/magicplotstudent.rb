cask "magicplotstudent" do
  version "2.9.3"
  sha256 "ddfbad34da2134f86d46c3ff0834a3138f62eadcc497f17d5aa116571c05d23e"

  url "https://magicplot.com/downloads/MagicPlotStudent#{version}.zip"
  appcast "https://magicplot.com/wiki/release_notes"
  name "MagicPlot Student"
  homepage "https://magicplot.com/"

  app "MagicPlotStudent#{version}.app"
end
