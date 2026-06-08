cask "font-lexend" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lexend/Lexend%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Lexend"
  homepage "https://fonts.google.com/specimen/Lexend"

  font "Lexend[wght].ttf"

  # No zap stanza required
end
