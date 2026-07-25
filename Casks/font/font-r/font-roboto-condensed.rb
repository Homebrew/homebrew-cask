cask "font-roboto-condensed" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/robotocondensed"
  name "Roboto Condensed"
  homepage "https://fonts.google.com/specimen/Roboto+Condensed"

  font "RobotoCondensed-Italic[wght].ttf"
  font "RobotoCondensed[wght].ttf"

  # No zap stanza required
end
