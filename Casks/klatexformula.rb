cask "klatexformula" do
  version "4.1.0"
  sha256 "fe868fcec17638f98f5c730f1dee20fe91981523392e49d6b9b23795f2b4b897"

  url "https://downloads.sourceforge.net/klatexformula/klatexformula/klatexformula-#{version}/klatexformula-#{version}-macosx.dmg",
      verified: "downloads.sourceforge.net/klatexformula/"
  name "KLatexFormula"
  desc "Generate images from LaTeX equations"
  homepage "https://klatexformula.sourceforge.io/"

  app "klatexformula.app"
end
