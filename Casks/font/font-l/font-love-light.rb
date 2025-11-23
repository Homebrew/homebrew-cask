cask "font-love-light" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lovelight/LoveLight-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Love Light"
  homepage "https://fonts.google.com/specimen/Love+Light"

  font "LoveLight-Regular.ttf"

  # No zap stanza required
end
