cask "font-poly" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/poly"
  name "Poly"
  homepage "https://fonts.google.com/specimen/Poly"

  font "Poly-Italic.ttf"
  font "Poly-Regular.ttf"

  # No zap stanza required
end
