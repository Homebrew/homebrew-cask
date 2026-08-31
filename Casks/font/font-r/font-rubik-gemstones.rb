cask "font-rubik-gemstones" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikgemstones/RubikGemstones-Regular.ttf"
  name "Rubik Gemstones"
  homepage "https://fonts.google.com/specimen/Rubik+Gemstones"

  font "RubikGemstones-Regular.ttf"

  # No zap stanza required
end
