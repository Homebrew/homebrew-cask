cask "font-rubik-vinyl" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikvinyl/RubikVinyl-Regular.ttf"
  name "Rubik Vinyl"
  homepage "https://fonts.google.com/specimen/Rubik+Vinyl"

  font "RubikVinyl-Regular.ttf"

  # No zap stanza required
end
