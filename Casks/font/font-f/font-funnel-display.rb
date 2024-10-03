cask "font-funnel-display" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/funneldisplay/FunnelDisplay%5Bwght%5D.ttf"
  name "Funnel Display"
  homepage "https://github.com/Dicotype/Funnel"

  font "FunnelDisplay[wght].ttf"

  # No zap stanza required
end
