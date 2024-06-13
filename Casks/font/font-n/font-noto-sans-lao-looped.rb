cask "font-noto-sans-lao-looped" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanslaolooped/NotoSansLaoLooped%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Lao Looped"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Lao+Looped"

  font "NotoSansLaoLooped[wdth,wght].ttf"

  # No zap stanza required
end
