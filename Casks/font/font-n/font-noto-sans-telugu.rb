cask "font-noto-sans-telugu" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanstelugu/NotoSansTelugu%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Telugu"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Telugu"

  font "NotoSansTelugu[wdth,wght].ttf"

  # No zap stanza required
end
