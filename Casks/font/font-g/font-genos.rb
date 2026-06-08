cask "font-genos" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/genos"
  name "Genos"
  homepage "https://fonts.google.com/specimen/Genos"

  font "Genos-Italic[wght].ttf"
  font "Genos[wght].ttf"

  # No zap stanza required
end
