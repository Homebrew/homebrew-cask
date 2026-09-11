cask "font-licorice" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/licorice/Licorice-Regular.ttf"
  name "Licorice"
  homepage "https://fonts.google.com/specimen/Licorice"

  font "Licorice-Regular.ttf"

  # No zap stanza required
end
