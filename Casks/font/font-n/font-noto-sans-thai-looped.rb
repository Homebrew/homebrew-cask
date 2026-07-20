cask "font-noto-sans-thai-looped" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansthailooped/NotoSansThaiLooped%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Thai Looped"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Thai+Looped"

  font "NotoSansThaiLooped[wdth,wght].ttf"

  # No zap stanza required
end
