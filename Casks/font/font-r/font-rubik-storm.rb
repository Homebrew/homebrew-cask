cask "font-rubik-storm" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikstorm/RubikStorm-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Storm"
  homepage "https://fonts.google.com/specimen/Rubik+Storm"

  font "RubikStorm-Regular.ttf"

  # No zap stanza required
end
