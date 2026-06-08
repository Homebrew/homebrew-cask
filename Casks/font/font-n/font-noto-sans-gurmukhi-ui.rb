cask "font-noto-sans-gurmukhi-ui" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansgurmukhiui/NotoSansGurmukhiUI%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Gurmukhi UI"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Gurmukhi+UI"

  font "NotoSansGurmukhiUI[wdth,wght].ttf"

  # No zap stanza required
end
