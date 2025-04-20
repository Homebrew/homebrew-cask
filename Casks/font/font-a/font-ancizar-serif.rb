cask "font-ancizar-serif" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/ancizarserif"
  name "Ancizar Serif"
  homepage "https://github.com/UNAL-OMD/UNAL-Ancizar"

  font "AncizarSerif-Italic[wght].ttf"
  font "AncizarSerif[wght].ttf"

  # No zap stanza required
end
