cask "font-parkinsans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/parkinsans/Parkinsans%5Bwght%5D.ttf"
  name "Parkinsans"
  homepage "https://github.com/redstonedesign/parkinsans"

  font "Parkinsans[wght].ttf"

  # No zap stanza required
end
