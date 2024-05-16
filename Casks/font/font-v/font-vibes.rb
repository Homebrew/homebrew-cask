cask "font-vibes" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/vibes/Vibes-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Vibes"
  homepage "https://fonts.google.com/specimen/Vibes"

  font "Vibes-Regular.ttf"

  # No zap stanza required
end
