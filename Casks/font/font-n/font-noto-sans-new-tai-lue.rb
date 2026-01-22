cask "font-noto-sans-new-tai-lue" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansnewtailue/NotoSansNewTaiLue%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans New Tai Lue"
  homepage "https://fonts.google.com/specimen/Noto+Sans+New+Tai+Lue"

  font "NotoSansNewTaiLue[wght].ttf"

  # No zap stanza required
end
