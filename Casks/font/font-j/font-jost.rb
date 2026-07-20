cask "font-jost" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/jost"
  name "Jost"
  homepage "https://fonts.google.com/specimen/Jost"

  font "Jost-Italic[wght].ttf"
  font "Jost[wght].ttf"

  # No zap stanza required
end
