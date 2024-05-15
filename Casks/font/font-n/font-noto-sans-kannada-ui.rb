cask "font-noto-sans-kannada-ui" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanskannadaui/NotoSansKannadaUI%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Kannada UI"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Kannada+UI"

  font "NotoSansKannadaUI[wdth,wght].ttf"

  # No zap stanza required
end
