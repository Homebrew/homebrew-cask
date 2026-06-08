cask "font-betania-patmos" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/betaniapatmos/BetaniaPatmos-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Betania Patmos"
  homepage "https://fonts.google.com/specimen/Betania+Patmos"

  font "BetaniaPatmos-Regular.ttf"

  # No zap stanza required
end
