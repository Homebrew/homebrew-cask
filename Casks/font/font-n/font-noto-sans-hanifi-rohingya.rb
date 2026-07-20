cask "font-noto-sans-hanifi-rohingya" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanshanifirohingya/NotoSansHanifiRohingya%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Hanifi Rohingya"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Hanifi+Rohingya"

  font "NotoSansHanifiRohingya[wght].ttf"

  # No zap stanza required
end
