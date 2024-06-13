cask "font-glory" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/glory"
  name "Glory"
  homepage "https://fonts.google.com/specimen/Glory"

  font "Glory-Italic[wght].ttf"
  font "Glory[wght].ttf"

  # No zap stanza required
end
