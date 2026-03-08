cask "font-noto-sans-coptic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanscoptic/NotoSansCoptic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Coptic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Coptic"

  font "NotoSansCoptic-Regular.ttf"

  # No zap stanza required
end
