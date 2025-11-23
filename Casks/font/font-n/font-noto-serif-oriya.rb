cask "font-noto-serif-oriya" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoseriforiya/NotoSerifOriya%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Oriya"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Oriya"

  font "NotoSerifOriya[wght].ttf"

  # No zap stanza required
end
