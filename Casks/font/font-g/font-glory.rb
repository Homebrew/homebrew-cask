cask "font-glory" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/glory"
  name "Glory"
  desc "Suitable for logos, headlines and body text with the available six weights"
  homepage "https://fonts.google.com/specimen/Glory"

  font "Glory-Italic[wght].ttf"
  font "Glory[wght].ttf"

  # No zap stanza required
end
