cask "font-big-shoulders-inline-display-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bigshouldersinlinedisplaysc/BigShouldersInlineDisplaySC%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Big Shoulders Inline Display SC"
  homepage "https://fonts.google.com/specimen/Big+Shoulders+Inline+Display+SC"

  font "BigShouldersInlineDisplaySC[wght].ttf"

  # No zap stanza required
end
