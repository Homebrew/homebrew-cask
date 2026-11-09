cask "font-noto-sans-tai-le" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanstaile/NotoSansTaiLe-Regular.ttf"
  name "Noto Sans Tai Le"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Tai+Le"

  font "NotoSansTaiLe-Regular.ttf"

  zap :not_required
end
