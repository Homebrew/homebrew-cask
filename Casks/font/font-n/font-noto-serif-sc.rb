cask "font-noto-serif-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifsc/NotoSerifSC%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif SC"
  homepage "https://fonts.google.com/specimen/Noto+Serif+SC"

  font "NotoSerifSC[wght].ttf"

  # No zap stanza required
end
