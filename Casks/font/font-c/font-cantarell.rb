cask "font-cantarell" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cantarell"
  name "Cantarell"
  homepage "https://fonts.google.com/specimen/Cantarell"

  font "Cantarell-Bold.ttf"
  font "Cantarell-BoldItalic.ttf"
  font "Cantarell-Italic.ttf"
  font "Cantarell-Regular.ttf"

  # No zap stanza required
end
