cask "font-noto-sans-bamum" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansbamum/NotoSansBamum%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Bamum"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Bamum"

  font "NotoSansBamum[wght].ttf"

  # No zap stanza required
end
