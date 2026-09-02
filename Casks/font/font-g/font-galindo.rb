cask "font-galindo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/galindo/Galindo-Regular.ttf"
  name "Galindo"
  homepage "https://fonts.google.com/specimen/Galindo"

  font "Galindo-Regular.ttf"

  # No zap stanza required
end
