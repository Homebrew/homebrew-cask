cask "font-betania-patmos-in-gdl" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/betaniapatmosingdl/BetaniaPatmosInGDL-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Betania Patmos In GDL"
  homepage "https://fonts.google.com/specimen/Betania+Patmos+In+GDL"

  font "BetaniaPatmosInGDL-Regular.ttf"

  # No zap stanza required
end
