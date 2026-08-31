cask "font-imbue" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/imbue/Imbue%5Bopsz%2Cwght%5D.ttf"
  name "Imbue"
  homepage "https://fonts.google.com/specimen/Imbue"

  font "Imbue[opsz,wght].ttf"

  # No zap stanza required
end
