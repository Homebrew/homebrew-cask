cask "font-noto-sans-malayalam" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmalayalam/NotoSansMalayalam%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Malayalam"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Malayalam"

  font "NotoSansMalayalam[wdth,wght].ttf"

  # No zap stanza required
end
