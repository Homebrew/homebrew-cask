cask "font-rubik-beastly" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikbeastly/RubikBeastly-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Beastly"
  homepage "https://fonts.google.com/specimen/Rubik+Beastly"

  font "RubikBeastly-Regular.ttf"

  # No zap stanza required
end
