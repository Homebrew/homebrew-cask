cask "font-combo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/combo/Combo-Regular.ttf"
  name "Combo"
  homepage "https://fonts.google.com/specimen/Combo"

  font "Combo-Regular.ttf"

  # No zap stanza required
end
