cask "font-over-the-rainbow" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/overtherainbow/OvertheRainbow.ttf",
      verified: "github.com/google/fonts/"
  name "Over the Rainbow"
  homepage "https://fonts.google.com/specimen/Over+the+Rainbow"

  font "OvertheRainbow.ttf"

  # No zap stanza required
end
