cask "font-moon-dance" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/moondance/MoonDance-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Moon Dance"
  homepage "https://fonts.google.com/specimen/Moon+Dance"

  font "MoonDance-Regular.ttf"

  # No zap stanza required
end
