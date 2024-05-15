cask "font-noto-serif-jp" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifjp/NotoSerifJP%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif JP"
  desc "Modulated (“serif”) design for the japanese language"
  homepage "https://fonts.google.com/specimen/Noto+Serif+JP"

  font "NotoSerifJP[wght].ttf"

  # No zap stanza required
end
