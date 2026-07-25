cask "font-great-vibes" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/greatvibes/GreatVibes-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Great Vibes"
  homepage "https://fonts.google.com/specimen/Great+Vibes"

  font "GreatVibes-Regular.ttf"

  # No zap stanza required
end
