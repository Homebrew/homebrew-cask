cask "font-big-shoulders-inline-text-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bigshouldersinlinetextsc/BigShouldersInlineTextSC%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Big Shoulders Inline Text SC"
  homepage "https://fonts.google.com/specimen/Big+Shoulders+Inline+Text+SC"

  font "BigShouldersInlineTextSC[wght].ttf"

  # No zap stanza required
end
