cask "font-betania-patmos-guide-line" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/betaniapatmosguideline/BetaniaPatmosGuideLine-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Betania Patmos Guide Line"
  homepage "https://fonts.google.com/specimen/Betania+Patmos+Guide+Line"

  font "BetaniaPatmosGuideLine-Regular.ttf"

  # No zap stanza required
end
