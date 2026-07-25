cask "font-gloria-hallelujah" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gloriahallelujah/GloriaHallelujah.ttf",
      verified: "github.com/google/fonts/"
  name "Gloria Hallelujah"
  homepage "https://fonts.google.com/specimen/Gloria+Hallelujah"

  font "GloriaHallelujah.ttf"

  # No zap stanza required
end
