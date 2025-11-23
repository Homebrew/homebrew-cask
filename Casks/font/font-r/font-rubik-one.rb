cask "font-rubik-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikone/RubikOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik One"
  homepage "https://fonts.google.com/specimen/Rubik+One"

  font "RubikOne-Regular.ttf"

  # No zap stanza required
end
