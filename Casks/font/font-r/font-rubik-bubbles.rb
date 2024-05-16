cask "font-rubik-bubbles" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikbubbles/RubikBubbles-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Bubbles"
  homepage "https://fonts.google.com/specimen/Rubik+Bubbles"

  font "RubikBubbles-Regular.ttf"

  # No zap stanza required
end
