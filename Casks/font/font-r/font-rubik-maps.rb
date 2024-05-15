cask "font-rubik-maps" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikmaps/RubikMaps-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Maps"
  homepage "https://fonts.google.com/specimen/Rubik+Maps"

  font "RubikMaps-Regular.ttf"

  # No zap stanza required
end
