cask "font-lugrasimo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lugrasimo/Lugrasimo-Regular.ttf"
  name "Lugrasimo"
  homepage "https://fonts.google.com/specimen/Lugrasimo"

  font "Lugrasimo-Regular.ttf"

  # No zap stanza required
end
