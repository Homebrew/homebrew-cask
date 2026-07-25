cask "font-noto-sans-tirhuta" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanstirhuta/NotoSansTirhuta-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Tirhuta"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Tirhuta"

  font "NotoSansTirhuta-Regular.ttf"

  # No zap stanza required
end
