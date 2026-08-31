cask "font-kite-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kiteone/KiteOne-Regular.ttf"
  name "Kite One"
  homepage "https://fonts.google.com/specimen/Kite+One"

  font "KiteOne-Regular.ttf"

  # No zap stanza required
end
