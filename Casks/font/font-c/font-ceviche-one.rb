cask "font-ceviche-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cevicheone/CevicheOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ceviche One"
  homepage "https://fonts.google.com/specimen/Ceviche+One"

  font "CevicheOne-Regular.ttf"

  # No zap stanza required
end
