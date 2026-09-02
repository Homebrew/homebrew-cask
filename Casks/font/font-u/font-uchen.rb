cask "font-uchen" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/uchen/Uchen-Regular.ttf"
  name "Uchen"
  homepage "https://fonts.google.com/specimen/Uchen"

  font "Uchen-Regular.ttf"

  # No zap stanza required
end
