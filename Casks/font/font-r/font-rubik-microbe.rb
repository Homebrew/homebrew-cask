cask "font-rubik-microbe" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikmicrobe/RubikMicrobe-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Microbe"
  homepage "https://fonts.google.com/specimen/Rubik+Microbe"

  font "RubikMicrobe-Regular.ttf"

  # No zap stanza required
end
