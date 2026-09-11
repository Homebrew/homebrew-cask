cask "font-lacquer" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lacquer/Lacquer-Regular.ttf"
  name "Lacquer"
  homepage "https://fonts.google.com/specimen/Lacquer"

  font "Lacquer-Regular.ttf"

  # No zap stanza required
end
