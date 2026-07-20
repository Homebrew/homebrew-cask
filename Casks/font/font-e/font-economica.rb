cask "font-economica" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/economica"
  name "Economica"
  homepage "https://fonts.google.com/specimen/Economica"

  font "Economica-Bold.ttf"
  font "Economica-BoldItalic.ttf"
  font "Economica-Italic.ttf"
  font "Economica-Regular.ttf"

  # No zap stanza required
end
