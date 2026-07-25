cask "font-sankofa-display" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sankofadisplay/SankofaDisplay-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sankofa Display"
  homepage "https://fonts.google.com/specimen/Sankofa+Display"

  font "SankofaDisplay-Regular.ttf"

  # No zap stanza required
end
