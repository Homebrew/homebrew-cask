cask "font-big-shoulders-inline" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bigshouldersinline/BigShouldersInline%5Bopsz%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Big Shoulders Inline"
  homepage "https://fonts.google.com/specimen/Big+Shoulders+Inline"

  font "BigShouldersInline[opsz,wght].ttf"

  # No zap stanza required
end
