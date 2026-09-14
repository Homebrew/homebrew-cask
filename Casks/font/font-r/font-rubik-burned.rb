cask "font-rubik-burned" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikburned/RubikBurned-Regular.ttf"
  name "Rubik Burned"
  homepage "https://fonts.google.com/specimen/Rubik+Burned"

  font "RubikBurned-Regular.ttf"

  # No zap stanza required
end
