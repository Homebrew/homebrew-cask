cask "font-swanky-and-moo-moo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/swankyandmoomoo/SwankyandMooMoo.ttf",
      verified: "github.com/google/fonts/"
  name "Swanky and Moo Moo"
  homepage "https://fonts.google.com/specimen/Swanky+and+Moo+Moo"

  font "SwankyandMooMoo.ttf"

  # No zap stanza required
end
