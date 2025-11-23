cask "font-tiro-gurmukhi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/tirogurmukhi"
  name "Tiro Gurmukhi"
  homepage "https://fonts.google.com/specimen/Tiro+Gurmukhi"

  font "TiroGurmukhi-Italic.ttf"
  font "TiroGurmukhi-Regular.ttf"

  # No zap stanza required
end
