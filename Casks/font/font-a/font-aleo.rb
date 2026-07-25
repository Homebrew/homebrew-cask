cask "font-aleo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/aleo"
  name "Aleo"
  homepage "https://fonts.google.com/specimen/Aleo"

  font "Aleo-Italic[wght].ttf"
  font "Aleo[wght].ttf"

  # No zap stanza required
end
