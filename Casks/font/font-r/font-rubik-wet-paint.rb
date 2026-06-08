cask "font-rubik-wet-paint" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikwetpaint/RubikWetPaint-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Wet Paint"
  homepage "https://fonts.google.com/specimen/Rubik+Wet+Paint"

  font "RubikWetPaint-Regular.ttf"

  # No zap stanza required
end
