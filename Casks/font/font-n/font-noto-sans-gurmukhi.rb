cask "font-noto-sans-gurmukhi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansgurmukhi/NotoSansGurmukhi%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Gurmukhi"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Gurmukhi"

  font "NotoSansGurmukhi[wdth,wght].ttf"

  # No zap stanza required
end
