cask "font-big-shoulders-display-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bigshouldersdisplaysc/BigShouldersDisplaySC%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Big Shoulders Display SC"
  homepage "https://fonts.google.com/specimen/Big+Shoulders+Display+SC"

  font "BigShouldersDisplaySC[wght].ttf"

  # No zap stanza required
end
