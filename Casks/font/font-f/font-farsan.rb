cask "font-farsan" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/farsan/Farsan-Regular.ttf"
  name "Farsan"
  homepage "https://fonts.google.com/specimen/Farsan"

  font "Farsan-Regular.ttf"

  # No zap stanza required
end
