cask "font-akt" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/akt/Akt%5Bwght%5D.ttf"
  name "Akt"
  homepage "https://github.com/dimgrenev/akt"

  font "Akt[wght].ttf"

  # No zap stanza required
end
