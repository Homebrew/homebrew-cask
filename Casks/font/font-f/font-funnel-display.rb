cask "font-funnel-display" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/funneldisplay/FunnelDisplay%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Funnel Display"
  homepage "https://fonts.google.com/specimen/Funnel+Display"

  font "FunnelDisplay[wght].ttf"

  # No zap stanza required
end
