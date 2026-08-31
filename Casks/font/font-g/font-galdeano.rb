cask "font-galdeano" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/galdeano/Galdeano-Regular.ttf"
  name "Galdeano"
  homepage "https://fonts.google.com/specimen/Galdeano"

  font "Galdeano-Regular.ttf"

  # No zap stanza required
end
