cask "font-source-serif-4" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sourceserif4"
  name "Source Serif 4"
  homepage "https://fonts.google.com/specimen/Source+Serif+4"

  font "SourceSerif4-Italic[opsz,wght].ttf"
  font "SourceSerif4[opsz,wght].ttf"

  # No zap stanza required
end
