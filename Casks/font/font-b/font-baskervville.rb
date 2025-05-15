cask "font-baskervville" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/baskervville"
  name "Baskervville"
  homepage "https://fonts.google.com/specimen/Baskervville"

  font "Baskervville-Italic[wght].ttf"
  font "Baskervville[wght].ttf"

  # No zap stanza required
end
