cask "font-noto-sans-cham" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanscham/NotoSansCham%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Cham"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Cham"

  font "NotoSansCham[wght].ttf"

  # No zap stanza required
end
