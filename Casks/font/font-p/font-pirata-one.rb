cask "font-pirata-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pirataone/PirataOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Pirata One"
  homepage "https://fonts.google.com/specimen/Pirata+One"

  font "PirataOne-Regular.ttf"

  # No zap stanza required
end
