cask "font-noto-sans-yi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansyi/NotoSansYi-Regular.ttf"
  name "Noto Sans Yi"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Yi"

  font "NotoSansYi-Regular.ttf"

  # No zap stanza required
end
