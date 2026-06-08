cask "font-noto-sans-kawi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanskawi/NotoSansKawi%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Kawi"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Kawi"

  font "NotoSansKawi[wght].ttf"

  # No zap stanza required
end
