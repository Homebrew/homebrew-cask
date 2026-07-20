cask "font-rubik-spray-paint" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikspraypaint/RubikSprayPaint-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Spray Paint"
  homepage "https://fonts.google.com/specimen/Rubik+Spray+Paint"

  font "RubikSprayPaint-Regular.ttf"

  # No zap stanza required
end
