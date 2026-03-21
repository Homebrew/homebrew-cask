cask "font-sixtyfour-convergence" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sixtyfourconvergence/SixtyfourConvergence%5BBLED%2CSCAN%2CXELA%2CYELA%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Sixtyfour Convergence"
  homepage "https://fonts.google.com/specimen/Sixtyfour+Convergence"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sixtyfour Convergence",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SixtyfourConvergence[BLED,SCAN,XELA,YELA].ttf"

  # No zap stanza required
end
