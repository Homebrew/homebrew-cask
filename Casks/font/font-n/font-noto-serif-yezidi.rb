cask "font-noto-serif-yezidi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifyezidi/NotoSerifYezidi%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Yezidi"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Yezidi"

  font "NotoSerifYezidi[wght].ttf"

  # No zap stanza required
end
