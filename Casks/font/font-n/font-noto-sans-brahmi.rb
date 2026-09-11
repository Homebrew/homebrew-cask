cask "font-noto-sans-brahmi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansbrahmi/NotoSansBrahmi-Regular.ttf"
  name "Noto Sans Brahmi"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Brahmi"

  font "NotoSansBrahmi-Regular.ttf"

  # No zap stanza required
end
