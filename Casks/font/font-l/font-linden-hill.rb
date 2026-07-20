cask "font-linden-hill" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/lindenhill"
  name "Linden Hill"
  homepage "https://fonts.google.com/specimen/Linden+Hill"

  font "LindenHill-Italic.ttf"
  font "LindenHill-Regular.ttf"

  # No zap stanza required
end
