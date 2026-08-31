cask "font-odibee-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/odibeesans/OdibeeSans-Regular.ttf"
  name "Odibee Sans"
  homepage "https://fonts.google.com/specimen/Odibee+Sans"

  font "OdibeeSans-Regular.ttf"

  # No zap stanza required
end
