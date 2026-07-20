cask "font-savate" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/savate"
  name "Savate"
  homepage "https://fonts.google.com/specimen/Savate"

  font "Savate-Italic[wght].ttf"
  font "Savate[wght].ttf"

  # No zap stanza required
end
