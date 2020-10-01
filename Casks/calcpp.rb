cask "calcpp" do
  version "0.4"
  sha256 "f75d95f24e019a5cde0e3d8c0ff5cad93bd07524513dca19cf8b986e6278aa7f"

  url "https://github.com/antoniojkim/CalcPlusPlus/releases/download/v0.4/calcplusplus.bottle.tgz"
  appcast "https://github.com/antoniojkim/CalcPlusPlus/releases.atom"
  name "CalcPlusPlus"
  desc "Advanced Scientific Calculator. Highly performant, robust, and easy to use"
  homepage "https://github.com/antoniojkim/CalcPlusPlus"

  depends_on formula: "gsl"
  depends_on formula: "qt"

  app "CalcPlusPlus/calcpp.app"
end
