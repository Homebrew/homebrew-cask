cask "font-ramaraja" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ramaraja/Ramaraja-Regular.ttf"
  name "Ramaraja"
  homepage "https://fonts.google.com/specimen/Ramaraja"

  font "Ramaraja-Regular.ttf"

  # No zap stanza required
end
