cask "font-noto-sans-adlam" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansadlam/NotoSansAdlam%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Adlam"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Adlam"

  font "NotoSansAdlam[wght].ttf"

  # No zap stanza required
end
