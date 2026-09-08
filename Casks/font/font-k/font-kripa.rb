cask "font-kripa" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kripa/Kripa%5Bwght%5D.ttf"
  name "Kripa"
  homepage "https://github.com/kedar9/kripa"

  font "Kripa[wght].ttf"

  # No zap stanza required
end
