cask "font-tiro-devanagari-marathi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/tirodevanagarimarathi"
  name "Tiro Devanagari Marathi"
  homepage "https://fonts.google.com/specimen/Tiro+Devanagari+Marathi"

  font "TiroDevanagariMarathi-Italic.ttf"
  font "TiroDevanagariMarathi-Regular.ttf"

  # No zap stanza required
end
