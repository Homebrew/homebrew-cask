cask "font-noto-sans-miao" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmiao/NotoSansMiao-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Miao"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Miao"

  font "NotoSansMiao-Regular.ttf"

  # No zap stanza required
end
