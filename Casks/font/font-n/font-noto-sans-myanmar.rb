cask "font-noto-sans-myanmar" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmyanmar/NotoSansMyanmar%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Myanmar"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Myanmar"

  font "NotoSansMyanmar[wdth,wght].ttf"

  # No zap stanza required
end
