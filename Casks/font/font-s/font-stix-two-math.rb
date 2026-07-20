cask "font-stix-two-math" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/stixtwomath/STIXTwoMath-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "STIX Two Math"
  homepage "https://fonts.google.com/specimen/STIX+Two+Math"

  font "STIXTwoMath-Regular.ttf"

  # No zap stanza required
end
