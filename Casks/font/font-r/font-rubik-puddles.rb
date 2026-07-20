cask "font-rubik-puddles" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikpuddles/RubikPuddles-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Puddles"
  homepage "https://fonts.google.com/specimen/Rubik+Puddles"

  font "RubikPuddles-Regular.ttf"

  # No zap stanza required
end
