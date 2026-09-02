cask "font-luxurious-script" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/luxuriousscript/LuxuriousScript-Regular.ttf"
  name "Luxurious Script"
  homepage "https://fonts.google.com/specimen/Luxurious+Script"

  font "LuxuriousScript-Regular.ttf"

  # No zap stanza required
end
