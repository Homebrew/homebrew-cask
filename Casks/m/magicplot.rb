cask "magicplot" do
  arch arm: "arm64", intel: "x64"

  version "3.2"
  sha256 arm:   "156fe5691e628415e0148e9c31504b9c1e158b0148d83760d96b39b8e17419f9",
         intel: "2bbab000de1c14446ee60704a77d453ccd464ec8610b674980090e7ac084947d"

  url "https://magicplot.com/downloads/MagicPlot-#{version}-macos-#{arch}.zip"
  name "MagicPlot"
  desc "Software for nonlinear fitting, plotting and data analysis"
  homepage "https://magicplot.com/"

  livecheck do
    url :homepage
    regex(/href=.*?MagicPlot[._-]v?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.zip/i)
  end

  depends_on :macos

  app "MagicPlot.app"

  zap trash: [
    "~/Library/Application Support/MagicPlot",
    "~/Library/Saved Application State/com.magicplot.MagicPlot.savedState",
  ]
end
