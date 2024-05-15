cask "font-roboto-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "apache/robotomono"
  name "Roboto Mono"
  homepage "https://fonts.google.com/specimen/Roboto+Mono"

  font "RobotoMono-Italic[wght].ttf"
  font "RobotoMono[wght].ttf"

  # No zap stanza required
end
