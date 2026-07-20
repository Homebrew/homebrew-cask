cask "font-noto-sans-lao-ui" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanslaoui/NotoSansLaoUI%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Lao UI"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Lao+UI"

  font "NotoSansLaoUI[wdth,wght].ttf"

  # No zap stanza required
end
