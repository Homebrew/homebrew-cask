cask "font-kameron" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kameron/Kameron%5Bwght%5D.ttf"
  name "Kameron"
  homepage "https://fonts.google.com/specimen/Kameron"

  font "Kameron[wght].ttf"

  # No zap stanza required
end
