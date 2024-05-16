cask "font-rosario" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/rosario"
  name "Rosario"
  homepage "https://fonts.google.com/specimen/Rosario"

  font "Rosario-Italic[wght].ttf"
  font "Rosario[wght].ttf"

  # No zap stanza required
end
