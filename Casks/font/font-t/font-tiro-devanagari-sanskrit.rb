cask "font-tiro-devanagari-sanskrit" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/tirodevanagarisanskrit"
  name "Tiro Devanagari Sanskrit"
  homepage "https://fonts.google.com/specimen/Tiro+Devanagari+Sanskrit"

  font "TiroDevanagariSanskrit-Italic.ttf"
  font "TiroDevanagariSanskrit-Regular.ttf"

  # No zap stanza required
end
