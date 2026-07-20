cask "font-carrois-gothic-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/carroisgothicsc/CarroisGothicSC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Carrois Gothic SC"
  homepage "https://fonts.google.com/specimen/Carrois+Gothic+SC"

  font "CarroisGothicSC-Regular.ttf"

  # No zap stanza required
end
