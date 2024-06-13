cask "font-spline-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/splinesans/SplineSans%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Spline Sans"
  homepage "https://fonts.google.com/specimen/Spline+Sans"

  font "SplineSans[wght].ttf"

  # No zap stanza required
end
