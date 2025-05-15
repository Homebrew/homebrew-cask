cask "font-asta-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/astasans/AstaSans%5Bwght%5D.ttf"
  name "Asta Sans"
  homepage "https://github.com/42dot/Asta-Sans"

  font "AstaSans[wght].ttf"

  # No zap stanza required
end
