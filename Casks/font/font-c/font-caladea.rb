cask "font-caladea" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/caladea"
  name "Caladea"
  homepage "https://fonts.google.com/specimen/Caladea"

  font "Caladea-Bold.ttf"
  font "Caladea-BoldItalic.ttf"
  font "Caladea-Italic.ttf"
  font "Caladea-Regular.ttf"

  # No zap stanza required
end
