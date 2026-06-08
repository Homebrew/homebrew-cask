cask "font-grenze" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/grenze"
  name "Grenze"
  homepage "https://fonts.google.com/specimen/Grenze"

  font "Grenze-Italic[wght].ttf"
  font "Grenze[wght].ttf"

  # No zap stanza required
end
