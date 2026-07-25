cask "font-big-shoulders-text" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bigshoulderstext/BigShouldersText%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Big Shoulders Text"
  homepage "https://fonts.google.com/specimen/Big+Shoulders+Text"

  font "BigShouldersText[wght].ttf"

  # No zap stanza required
end
