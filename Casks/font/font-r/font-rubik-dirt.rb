cask "font-rubik-dirt" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikdirt/RubikDirt-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Dirt"
  homepage "https://fonts.google.com/specimen/Rubik+Dirt"

  font "RubikDirt-Regular.ttf"

  # No zap stanza required
end
