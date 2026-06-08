cask "font-rubik-marker-hatch" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikmarkerhatch/RubikMarkerHatch-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Marker Hatch"
  homepage "https://fonts.google.com/specimen/Rubik+Marker+Hatch"

  font "RubikMarkerHatch-Regular.ttf"

  # No zap stanza required
end
