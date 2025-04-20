cask "font-ancizar-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/ancizarsans"
  name "Ancizar Sans"
  homepage "https://github.com/UNAL-OMD/UNAL-Ancizar"

  font "AncizarSans-Italic[wght].ttf"
  font "AncizarSans[wght].ttf"

  # No zap stanza required
end
