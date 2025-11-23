cask "font-rubik-lines" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubiklines/RubikLines-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Lines"
  homepage "https://fonts.google.com/specimen/Rubik+Lines"

  font "RubikLines-Regular.ttf"

  # No zap stanza required
end
