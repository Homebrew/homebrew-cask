cask "font-noto-sans-tai-le" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanstaile/NotoSansTaiLe-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Tai Le"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Tai+Le"

  font "NotoSansTaiLe-Regular.ttf"

  # No zap stanza required
end
