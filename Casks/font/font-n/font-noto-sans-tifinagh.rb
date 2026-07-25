cask "font-noto-sans-tifinagh" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanstifinagh/NotoSansTifinagh-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Tifinagh"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Tifinagh"

  font "NotoSansTifinagh-Regular.ttf"

  # No zap stanza required
end
