cask "font-rubik-doodle-shadow" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikdoodleshadow/RubikDoodleShadow-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Doodle Shadow"
  homepage "https://fonts.google.com/specimen/Rubik+Doodle+Shadow"

  font "RubikDoodleShadow-Regular.ttf"

  # No zap stanza required
end
