cask "font-butterfly-kids" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/butterflykids/ButterflyKids-Regular.ttf"
  name "Butterfly Kids"
  homepage "https://fonts.google.com/specimen/Butterfly+Kids"

  font "ButterflyKids-Regular.ttf"

  # No zap stanza required
end
