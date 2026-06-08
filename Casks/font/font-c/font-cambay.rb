cask "font-cambay" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cambay"
  name "Cambay"
  homepage "https://fonts.google.com/specimen/Cambay"

  font "Cambay-Bold.ttf"
  font "Cambay-BoldItalic.ttf"
  font "Cambay-Italic.ttf"
  font "Cambay-Regular.ttf"

  # No zap stanza required
end
