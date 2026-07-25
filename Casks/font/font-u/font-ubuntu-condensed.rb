cask "font-ubuntu-condensed" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ufl/ubuntucondensed/UbuntuCondensed-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ubuntu Condensed"
  homepage "https://fonts.google.com/specimen/Ubuntu+Condensed"

  font "UbuntuCondensed-Regular.ttf"

  # No zap stanza required
end
