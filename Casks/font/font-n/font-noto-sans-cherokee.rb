cask "font-noto-sans-cherokee" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanscherokee/NotoSansCherokee%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Cherokee"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Cherokee"

  font "NotoSansCherokee[wght].ttf"

  # No zap stanza required
end
