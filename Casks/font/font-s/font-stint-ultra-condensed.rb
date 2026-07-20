cask "font-stint-ultra-condensed" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/stintultracondensed/StintUltraCondensed-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Stint Ultra Condensed"
  homepage "https://fonts.google.com/specimen/Stint+Ultra+Condensed"

  font "StintUltraCondensed-Regular.ttf"

  # No zap stanza required
end
