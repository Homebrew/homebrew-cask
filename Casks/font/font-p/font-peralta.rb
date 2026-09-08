cask "font-peralta" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/peralta/Peralta-Regular.ttf"
  name "Peralta"
  homepage "https://fonts.google.com/specimen/Peralta"

  font "Peralta-Regular.ttf"

  # No zap stanza required
end
