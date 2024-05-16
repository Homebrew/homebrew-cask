cask "font-tiro-devanagari-hindi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/tirodevanagarihindi"
  name "Tiro Devanagari Hindi"
  desc "Broader proportions, generous counters, and strong diagonal strokes"
  homepage "https://fonts.google.com/specimen/Tiro+Devanagari+Hindi"

  font "TiroDevanagariHindi-Italic.ttf"
  font "TiroDevanagariHindi-Regular.ttf"

  # No zap stanza required
end
