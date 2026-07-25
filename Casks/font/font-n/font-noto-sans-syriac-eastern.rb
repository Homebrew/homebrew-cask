cask "font-noto-sans-syriac-eastern" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssyriaceastern/NotoSansSyriacEastern%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Syriac Eastern"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Syriac+Eastern"

  font "NotoSansSyriacEastern[wght].ttf"

  # No zap stanza required
end
