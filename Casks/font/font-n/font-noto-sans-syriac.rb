cask "font-noto-sans-syriac" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssyriac/NotoSansSyriac%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Syriac"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Syriac"

  font "NotoSansSyriac[wght].ttf"

  # No zap stanza required
end
