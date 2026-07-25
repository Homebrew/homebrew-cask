cask "font-ancizar-serif" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/ancizarserif"
  name "Ancizar Serif"
  homepage "https://fonts.google.com/specimen/Ancizar+Serif"

  font "AncizarSerif-Italic[wght].ttf"
  font "AncizarSerif[wght].ttf"

  # No zap stanza required
end
