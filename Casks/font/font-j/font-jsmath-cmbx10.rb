cask "font-jsmath-cmbx10" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/jsmathcmbx10/jsMath-cmbx10.ttf",
      verified: "github.com/google/fonts/"
  name "jsMath cmbx10"
  homepage ""

  font "jsMath-cmbx10.ttf"

  # No zap stanza required
end
