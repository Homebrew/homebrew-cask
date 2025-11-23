cask "font-figtree" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/figtree"
  name "Figtree"
  homepage "https://fonts.google.com/specimen/Figtree"

  font "Figtree-Italic[wght].ttf"
  font "Figtree[wght].ttf"

  # No zap stanza required
end
