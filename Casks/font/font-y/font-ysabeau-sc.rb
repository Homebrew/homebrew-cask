cask "font-ysabeau-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ysabeausc/YsabeauSC%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Ysabeau SC"
  homepage "https://fonts.google.com/specimen/Ysabeau+SC"

  font "YsabeauSC[wght].ttf"

  # No zap stanza required
end
