cask "font-oi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/oi/Oi-Regular.ttf"
  name "Oi"
  homepage "https://fonts.google.com/specimen/Oi"

  font "Oi-Regular.ttf"

  # No zap stanza required
end
