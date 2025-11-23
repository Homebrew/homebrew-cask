cask "font-rubik-scribble" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikscribble/RubikScribble-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Scribble"
  homepage "https://fonts.google.com/specimen/Rubik+Scribble"

  font "RubikScribble-Regular.ttf"

  # No zap stanza required
end
