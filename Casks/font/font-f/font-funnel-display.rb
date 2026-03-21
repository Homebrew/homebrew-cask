cask "font-funnel-display" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/funneldisplay/FunnelDisplay%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Funnel Display"
  homepage "https://fonts.google.com/specimen/Funnel+Display"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Funnel Display",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "FunnelDisplay[wght].ttf"

  # No zap stanza required
end
