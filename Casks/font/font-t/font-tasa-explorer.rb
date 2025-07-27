cask "font-tasa-explorer" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tasaexplorer/TASAExplorer%5Bwght%5D.ttf"
  name "TASA Explorer"
  homepage "https://github.com/localremotetw/TASA-Typeface-Collection"

  font "TASAExplorer[wght].ttf"

  # No zap stanza required
end
