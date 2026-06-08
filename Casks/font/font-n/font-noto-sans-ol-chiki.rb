cask "font-noto-sans-ol-chiki" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansolchiki/NotoSansOlChiki%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Ol Chiki"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Ol+Chiki"

  font "NotoSansOlChiki[wght].ttf"

  # No zap stanza required
end
