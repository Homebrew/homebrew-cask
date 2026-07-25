cask "font-noto-serif-gujarati" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifgujarati/NotoSerifGujarati%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Gujarati"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Gujarati"

  font "NotoSerifGujarati[wght].ttf"

  # No zap stanza required
end
