cask "font-monda" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/monda/Monda%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Monda"
  homepage "https://fonts.google.com/specimen/Monda"

  font "Monda[wght].ttf"

  # No zap stanza required
end
