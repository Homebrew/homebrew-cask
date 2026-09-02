cask "font-noto-sans-buginese" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansbuginese/NotoSansBuginese-Regular.ttf"
  name "Noto Sans Buginese"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Buginese"

  font "NotoSansBuginese-Regular.ttf"

  # No zap stanza required
end
