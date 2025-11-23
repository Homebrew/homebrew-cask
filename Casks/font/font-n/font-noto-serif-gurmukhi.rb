cask "font-noto-serif-gurmukhi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifgurmukhi/NotoSerifGurmukhi%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Gurmukhi"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Gurmukhi"

  font "NotoSerifGurmukhi[wght].ttf"

  # No zap stanza required
end
