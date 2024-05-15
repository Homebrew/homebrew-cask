cask "font-averia-gruesa-libre" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/averiagruesalibre/AveriaGruesaLibre-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Averia Gruesa Libre"
  homepage "https://fonts.google.com/specimen/Averia+Gruesa+Libre"

  font "AveriaGruesaLibre-Regular.ttf"

  # No zap stanza required
end
