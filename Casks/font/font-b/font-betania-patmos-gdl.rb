cask "font-betania-patmos-gdl" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/betaniapatmosgdl/BetaniaPatmosGDL-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Betania Patmos GDL"
  homepage "https://fonts.google.com/specimen/Betania+Patmos+GDL"

  font "BetaniaPatmosGDL-Regular.ttf"

  # No zap stanza required
end
