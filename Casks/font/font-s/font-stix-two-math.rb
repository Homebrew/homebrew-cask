cask "font-stix-two-math" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/stixtwomath/STIXTwoMath-Regular.ttf"
  name "STIX Two Math"
  homepage "https://fonts.google.com/specimen/STIX+Two+Math"

  font "STIXTwoMath-Regular.ttf"

  zap :not_required
end
