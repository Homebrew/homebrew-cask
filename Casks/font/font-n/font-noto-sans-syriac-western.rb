cask "font-noto-sans-syriac-western" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssyriacwestern/NotoSansSyriacWestern%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Syriac Western"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Syriac+Western"

  font "NotoSansSyriacWestern[wght].ttf"

  # No zap stanza required
end
