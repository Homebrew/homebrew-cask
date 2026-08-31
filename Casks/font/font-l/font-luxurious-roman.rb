cask "font-luxurious-roman" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/luxuriousroman/LuxuriousRoman-Regular.ttf"
  name "Luxurious Roman"
  homepage "https://fonts.google.com/specimen/Luxurious+Roman"

  font "LuxuriousRoman-Regular.ttf"

  # No zap stanza required
end
