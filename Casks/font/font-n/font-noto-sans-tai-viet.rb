cask "font-noto-sans-tai-viet" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanstaiviet/NotoSansTaiViet-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Tai Viet"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Tai+Viet"

  font "NotoSansTaiViet-Regular.ttf"

  # No zap stanza required
end
