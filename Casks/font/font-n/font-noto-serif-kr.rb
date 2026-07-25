cask "font-noto-serif-kr" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifkr/NotoSerifKR%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif KR"
  homepage "https://fonts.google.com/specimen/Noto+Serif+KR"

  font "NotoSerifKR[wght].ttf"

  # No zap stanza required
end
