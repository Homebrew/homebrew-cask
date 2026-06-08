cask "font-tasa-explorer" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tasaexplorer/TASAExplorer%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "TASA Explorer"
  homepage "https://fonts.google.com/specimen/TASA+Explorer"

  font "TASAExplorer[wght].ttf"

  # No zap stanza required
end
