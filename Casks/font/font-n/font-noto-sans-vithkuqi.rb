cask "font-noto-sans-vithkuqi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansvithkuqi/NotoSansVithkuqi%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Vithkuqi"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Vithkuqi"

  font "NotoSansVithkuqi[wght].ttf"

  # No zap stanza required
end
