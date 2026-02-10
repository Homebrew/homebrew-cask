cask "font-noto-sans-sundanese" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssundanese/NotoSansSundanese%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Sundanese"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Sundanese"

  font "NotoSansSundanese[wght].ttf"

  # No zap stanza required
end
