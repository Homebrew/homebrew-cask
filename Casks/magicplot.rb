cask "magicplot" do
  version "3.0.1"
  sha256 "67419db679bd1c5cd9c6bc919dfb4e37e767222afe4a2d164e67abfd94fda11b"

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

  zap trash: [
    "~/Library/Application Support/MagicPlot",
    "~/Library/Saved Application State/com.magicplot.MagicPlot.savedState",
  ]
end
