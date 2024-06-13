cask "font-anuphan" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anuphan/Anuphan%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Anuphan"
  homepage "https://fonts.google.com/specimen/Anuphan"

  font "Anuphan[wght].ttf"

  # No zap stanza required
end
