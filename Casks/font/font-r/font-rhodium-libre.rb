cask "font-rhodium-libre" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rhodiumlibre/RhodiumLibre-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rhodium Libre"
  homepage "https://fonts.google.com/specimen/Rhodium+Libre"

  font "RhodiumLibre-Regular.ttf"

  # No zap stanza required
end
