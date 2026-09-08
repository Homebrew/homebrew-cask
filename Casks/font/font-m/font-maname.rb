cask "font-maname" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/maname/Maname-Regular.ttf"
  name "Maname"
  homepage "https://fonts.google.com/specimen/Maname"

  font "Maname-Regular.ttf"

  # No zap stanza required
end
