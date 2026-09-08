cask "font-blaka-ink" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/blakaink/BlakaInk-Regular.ttf"
  name "Blaka Ink"
  homepage "https://fonts.google.com/specimen/Blaka+Ink"

  font "BlakaInk-Regular.ttf"

  # No zap stanza required
end
