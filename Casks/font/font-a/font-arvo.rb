cask "font-arvo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/arvo"
  name "Arvo"
  homepage "https://fonts.google.com/specimen/Arvo"

  font "Arvo-Bold.ttf"
  font "Arvo-BoldItalic.ttf"
  font "Arvo-Italic.ttf"
  font "Arvo-Regular.ttf"

  # No zap stanza required
end
