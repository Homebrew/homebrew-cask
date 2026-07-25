cask "font-gilda-display" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gildadisplay/GildaDisplay-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gilda Display"
  homepage "https://fonts.google.com/specimen/Gilda+Display"

  font "GildaDisplay-Regular.ttf"

  # No zap stanza required
end
