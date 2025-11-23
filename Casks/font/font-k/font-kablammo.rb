cask "font-kablammo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kablammo/Kablammo%5BMORF%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Kablammo"
  homepage "https://fonts.google.com/specimen/Kablammo"

  font "Kablammo[MORF].ttf"

  # No zap stanza required
end
