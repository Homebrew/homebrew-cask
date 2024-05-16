cask "font-sankofa-display" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sankofadisplay/SankofaDisplay-Regular.ttf"
  name "Sankofa Display"
  desc "Captivating african typeface that draws inspiration from a rich tapestry of african art styles, with a particular focus on straight- line geometric designs"
  homepage "https://github.com/batsimadz/Sankofa-Display"

  font "SankofaDisplay-Regular.ttf"

  # No zap stanza required
end
