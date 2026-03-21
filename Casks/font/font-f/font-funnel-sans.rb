cask "font-funnel-sans" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/funnelsans"
  name "Funnel Sans"
  homepage "https://fonts.google.com/specimen/Funnel+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Funnel Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "FunnelSans-Italic[wght].ttf"
  font "FunnelSans[wght].ttf"

  # No zap stanza required
end
