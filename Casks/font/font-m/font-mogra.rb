cask "font-mogra" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mogra/Mogra-Regular.ttf"
  name "Mogra"
  homepage "https://fonts.google.com/specimen/Mogra"

  font "Mogra-Regular.ttf"

  # No zap stanza required
end
