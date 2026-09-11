cask "font-festive" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/festive/Festive-Regular.ttf"
  name "Festive"
  homepage "https://fonts.google.com/specimen/Festive"

  font "Festive-Regular.ttf"

  # No zap stanza required
end
