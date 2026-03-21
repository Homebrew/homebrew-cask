cask "font-rubik-marker-hatch" do
  version "2.200"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/rubikmarkerhatch/RubikMarkerHatch-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Rubik Marker Hatch"
  homepage "https://fonts.google.com/specimen/Rubik+Marker+Hatch"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Rubik Marker Hatch",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RubikMarkerHatch-Regular.ttf"

  # No zap stanza required
end
