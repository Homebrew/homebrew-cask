cask "font-big-shoulders" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bigshoulders/BigShoulders%5Bopsz%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Big Shoulders"
  homepage "https://fonts.google.com/specimen/Big+Shoulders"

  font "BigShoulders[opsz,wght].ttf"

  # No zap stanza required
end
