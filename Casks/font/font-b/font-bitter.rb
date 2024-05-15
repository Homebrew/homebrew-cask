cask "font-bitter" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/bitter"
  name "Bitter"
  desc "Slab-serif typeface optimized for e-ink screens"
  homepage "https://fonts.google.com/specimen/Bitter"

  font "Bitter-Italic[wght].ttf"
  font "Bitter[wght].ttf"

  # No zap stanza required
end
