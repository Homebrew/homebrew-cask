cask "font-rubik-moonrocks" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikmoonrocks/RubikMoonrocks-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Moonrocks"
  homepage "https://fonts.google.com/specimen/Rubik+Moonrocks"

  font "RubikMoonrocks-Regular.ttf"

  # No zap stanza required
end
