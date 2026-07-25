cask "font-spline-sans-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/splinesansmono"
  name "Spline Sans Mono"
  homepage "https://fonts.google.com/specimen/Spline+Sans+Mono"

  font "SplineSansMono-Italic[wght].ttf"
  font "SplineSansMono[wght].ttf"

  # No zap stanza required
end
