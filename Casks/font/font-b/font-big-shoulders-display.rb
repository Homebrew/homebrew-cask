cask "font-big-shoulders-display" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bigshouldersdisplay/BigShouldersDisplay%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Big Shoulders Display"
  homepage "https://fonts.google.com/specimen/Big+Shoulders+Display"

  font "BigShouldersDisplay[wght].ttf"

  # No zap stanza required
end
