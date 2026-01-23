cask "font-noto-serif-malayalam" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifmalayalam/NotoSerifMalayalam%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Malayalam"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Malayalam"

  font "NotoSerifMalayalam[wght].ttf"

  # No zap stanza required
end
