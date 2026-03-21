cask "font-big-shoulders-text-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bigshoulderstextsc/BigShouldersTextSC%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Big Shoulders Text SC"
  homepage "https://fonts.google.com/specimen/Big+Shoulders+Text+SC"

  font "BigShouldersTextSC[wght].ttf"

  # No zap stanza required
end
