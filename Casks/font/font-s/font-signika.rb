cask "font-signika" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/signika/Signika%5BGRAD%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Signika"
  homepage "https://fonts.google.com/specimen/Signika"

  font "Signika[GRAD,wght].ttf"

  # No zap stanza required
end
