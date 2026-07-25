cask "font-noto-sans-imperial-aramaic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansimperialaramaic/NotoSansImperialAramaic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Imperial Aramaic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Imperial+Aramaic"

  font "NotoSansImperialAramaic-Regular.ttf"

  # No zap stanza required
end
