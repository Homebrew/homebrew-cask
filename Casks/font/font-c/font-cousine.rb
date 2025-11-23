cask "font-cousine" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "apache/cousine"
  name "Cousine"
  homepage "https://fonts.google.com/specimen/Cousine"

  font "Cousine-Bold.ttf"
  font "Cousine-BoldItalic.ttf"
  font "Cousine-Italic.ttf"
  font "Cousine-Regular.ttf"

  # No zap stanza required
end
