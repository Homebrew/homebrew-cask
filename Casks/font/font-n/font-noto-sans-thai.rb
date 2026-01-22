cask "font-noto-sans-thai" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansthai/NotoSansThai%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Thai"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Thai"

  font "NotoSansThai[wdth,wght].ttf"

  # No zap stanza required
end
