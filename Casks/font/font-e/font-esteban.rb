cask "font-esteban" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/esteban/Esteban-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Esteban"
  homepage "https://fonts.google.com/specimen/Esteban"

  font "Esteban-Regular.ttf"

  # No zap stanza required
end
