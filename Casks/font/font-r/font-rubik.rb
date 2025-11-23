cask "font-rubik" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/rubik"
  name "Rubik"
  homepage "https://fonts.google.com/specimen/Rubik"

  font "Rubik-Italic[wght].ttf"
  font "Rubik[wght].ttf"

  # No zap stanza required
end
