cask "font-noto-sans-saurashtra" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssaurashtra/NotoSansSaurashtra-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Saurashtra"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Saurashtra"

  font "NotoSansSaurashtra-Regular.ttf"

  # No zap stanza required
end
