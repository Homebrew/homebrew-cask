cask "font-montaga" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/montaga/Montaga-Regular.ttf"
  name "Montaga"
  homepage "https://fonts.google.com/specimen/Montaga"

  font "Montaga-Regular.ttf"

  # No zap stanza required
end
