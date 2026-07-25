cask "font-lekton" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/lekton"
  name "Lekton"
  homepage "https://fonts.google.com/specimen/Lekton"

  font "Lekton-Bold.ttf"
  font "Lekton-Italic.ttf"
  font "Lekton-Regular.ttf"

  # No zap stanza required
end
