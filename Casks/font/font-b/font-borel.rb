cask "font-borel" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/borel/Borel-Regular.ttf"
  name "Borel"
  homepage "https://fonts.google.com/specimen/Borel"

  font "Borel-Regular.ttf"

  # No zap stanza required
end
