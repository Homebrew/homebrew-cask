cask "font-carrois-gothic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/carroisgothic/CarroisGothic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Carrois Gothic"
  homepage "https://fonts.google.com/specimen/Carrois+Gothic"

  font "CarroisGothic-Regular.ttf"

  # No zap stanza required
end
