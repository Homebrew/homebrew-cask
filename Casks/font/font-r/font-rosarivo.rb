cask "font-rosarivo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/rosarivo"
  name "Rosarivo"
  homepage "https://fonts.google.com/specimen/Rosarivo"

  font "Rosarivo-Italic.ttf"
  font "Rosarivo-Regular.ttf"

  # No zap stanza required
end
