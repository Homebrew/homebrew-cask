cask "font-noto-sans-javanese" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansjavanese/NotoSansJavanese%5Bwght%5D.ttf"
  name "Noto Sans Javanese"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Javanese"

  font "NotoSansJavanese[wght].ttf"

  # No zap stanza required
end
