cask "font-faustina" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/faustina"
  name "Faustina"
  homepage "https://fonts.google.com/specimen/Faustina"

  font "Faustina-Italic[wght].ttf"
  font "Faustina[wght].ttf"

  # No zap stanza required
end
