cask "font-noto-sans-tc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanstc/NotoSansTC%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans TC"
  homepage "https://fonts.google.com/specimen/Noto+Sans+TC"

  font "NotoSansTC[wght].ttf"

  # No zap stanza required
end
