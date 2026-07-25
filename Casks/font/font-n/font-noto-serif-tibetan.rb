cask "font-noto-serif-tibetan" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoseriftibetan/NotoSerifTibetan%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Tibetan"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Tibetan"

  font "NotoSerifTibetan[wght].ttf"

  # No zap stanza required
end
