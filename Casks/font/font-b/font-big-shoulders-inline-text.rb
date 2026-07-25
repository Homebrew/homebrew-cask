cask "font-big-shoulders-inline-text" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bigshouldersinlinetext/BigShouldersInlineText%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Big Shoulders Inline Text"
  homepage "https://fonts.google.com/specimen/Big+Shoulders+Inline+Text"

  font "BigShouldersInlineText[wght].ttf"

  # No zap stanza required
end
