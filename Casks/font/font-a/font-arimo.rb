cask "font-arimo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "apache/arimo"
  name "Arimo"
  homepage "https://fonts.google.com/specimen/Arimo"

  font "Arimo-Italic[wght].ttf"
  font "Arimo[wght].ttf"

  # No zap stanza required
end
