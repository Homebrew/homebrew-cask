cask "font-gurajada" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gurajada/Gurajada-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gurajada"
  homepage "https://fonts.google.com/specimen/Gurajada"

  font "Gurajada-Regular.ttf"

  # No zap stanza required
end
