cask "font-betania-patmos-in" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/betaniapatmosin/BetaniaPatmosIn-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Betania Patmos In"
  homepage "https://fonts.google.com/specimen/Betania+Patmos+In"

  font "BetaniaPatmosIn-Regular.ttf"

  # No zap stanza required
end
