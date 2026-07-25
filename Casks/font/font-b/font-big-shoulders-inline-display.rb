cask "font-big-shoulders-inline-display" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bigshouldersinlinedisplay/BigShouldersInlineDisplay%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Big Shoulders Inline Display"
  homepage "https://fonts.google.com/specimen/Big+Shoulders+Inline+Display"

  font "BigShouldersInlineDisplay[wght].ttf"

  # No zap stanza required
end
