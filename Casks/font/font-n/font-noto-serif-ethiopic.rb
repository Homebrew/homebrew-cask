cask "font-noto-serif-ethiopic" do
  version "2.102"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifethiopic/NotoSerifEthiopic%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Ethiopic"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Ethiopic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Ethiopic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifEthiopic[wdth,wght].ttf"

  # No zap stanza required
end
