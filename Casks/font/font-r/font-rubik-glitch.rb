cask "font-rubik-glitch" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikglitch/RubikGlitch-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Glitch"
  homepage "https://fonts.google.com/specimen/Rubik+Glitch"

  font "RubikGlitch-Regular.ttf"

  # No zap stanza required
end
