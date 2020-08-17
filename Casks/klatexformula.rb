cask "klatexformula" do
  version "4.1.0"
  sha256 "fe868fcec17638f98f5c730f1dee20fe91981523392e49d6b9b23795f2b4b897"

  # downloads.sourceforge.net/klatexformula/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/klatexformula/klatexformula/klatexformula-#{version}/klatexformula-#{version}-macosx.dmg"
  appcast "https://sourceforge.net/projects/klatexformula/rss?path=/klatexformula"
  name "KLatexFormula"
  homepage "https://klatexformula.sourceforge.io/"

  app "klatexformula.app"
end
