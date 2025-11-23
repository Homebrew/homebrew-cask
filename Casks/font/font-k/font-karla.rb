cask "font-karla" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/karla"
  name "Karla"
  homepage "https://fonts.google.com/specimen/Karla"

  font "Karla-Italic[wght].ttf"
  font "Karla[wght].ttf"

  # No zap stanza required
end
