cask "font-chivo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/chivo"
  name "Chivo"
  homepage "https://fonts.google.com/specimen/Chivo"

  font "Chivo-Italic[wght].ttf"
  font "Chivo[wght].ttf"

  # No zap stanza required
end
