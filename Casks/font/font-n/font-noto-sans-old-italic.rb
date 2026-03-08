cask "font-noto-sans-old-italic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansolditalic/NotoSansOldItalic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Old Italic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Old+Italic"

  font "NotoSansOldItalic-Regular.ttf"

  # No zap stanza required
end
