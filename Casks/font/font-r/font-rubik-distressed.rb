cask "font-rubik-distressed" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikdistressed/RubikDistressed-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Distressed"
  homepage "https://fonts.google.com/specimen/Rubik+Distressed"

  font "RubikDistressed-Regular.ttf"

  # No zap stanza required
end
