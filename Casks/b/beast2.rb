cask "beast2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "2.7.6"
  sha256 "ebf7d5224bd458ba905a6a9a8049baec5f15442df32d6a2ca83b6c68ab319af0"

  url "https://github.com/CompEvol/beast2/releases/download/v#{version}/BEAST.v#{version}.Mac.dmg",
      verified: "github.com/CompEvol/beast2/"
  name "BEAST2"
  desc "Bayesian evolutionary analysis by sampling trees"
  homepage "https://www.beast2.org/"

  livecheck do
    url "https://www.beast2.org/download-mac/"
    regex(/location=.*?BEAST[._-]v?(\d+(?:\.\d+)+)\.Mac\.dmg/i)
  end

  suite "BEAST #{version}"

  zap trash: [
    "~/Library/Application Support/BEAST",
    "~/Library/Preferences/beast.app.beauti.Beauti.plist",
    "~/Library/Preferences/tracer.plist",
    "~/Library/Preferences/viz.DensiTree.plist",
    "~/Library/Saved Application State/beastfx.app.beast.BeastMain.savedState",
  ]
end
