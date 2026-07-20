cask "font-museomoderno" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/museomoderno"
  name "MuseoModerno"
  homepage "https://fonts.google.com/specimen/MuseoModerno"

  font "MuseoModerno-Italic[wght].ttf"
  font "MuseoModerno[wght].ttf"

  # No zap stanza required
end
