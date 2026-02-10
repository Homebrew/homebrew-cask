cask "font-noto-nastaliq-urdu" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notonastaliqurdu/NotoNastaliqUrdu%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Nastaliq Urdu"
  homepage "https://fonts.google.com/specimen/Noto+Nastaliq+Urdu"

  font "NotoNastaliqUrdu[wght].ttf"

  # No zap stanza required
end
