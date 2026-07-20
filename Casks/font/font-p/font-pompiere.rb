cask "font-pompiere" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pompiere/Pompiere-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Pompiere"
  homepage "https://fonts.google.com/specimen/Pompiere"

  font "Pompiere-Regular.ttf"

  # No zap stanza required
end
