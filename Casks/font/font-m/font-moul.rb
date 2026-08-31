cask "font-moul" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/moul/Moul-Regular.ttf"
  name "Moul"
  homepage "https://fonts.google.com/specimen/Moul"

  font "Moul-Regular.ttf"

  # No zap stanza required
end
