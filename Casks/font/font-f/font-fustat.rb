cask "font-fustat" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fustat/Fustat%5Bwght%5D.ttf"
  name "Fustat"
  homepage "https://github.com/Kief-Type-Foundry/Fustat"

  font "Fustat[wght].ttf"

  # No zap stanza required
end
