cask "font-noto-sans-gujarati" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansgujarati/NotoSansGujarati%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Gujarati"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Gujarati"

  font "NotoSansGujarati[wdth,wght].ttf"

  # No zap stanza required
end
