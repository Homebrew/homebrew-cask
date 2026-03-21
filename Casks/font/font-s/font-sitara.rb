cask "font-sitara" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sitara"
  name "Sitara"
  homepage "https://fonts.google.com/specimen/Sitara"

  font "Sitara-Bold.ttf"
  font "Sitara-BoldItalic.ttf"
  font "Sitara-Italic.ttf"
  font "Sitara-Regular.ttf"

  # No zap stanza required
end
