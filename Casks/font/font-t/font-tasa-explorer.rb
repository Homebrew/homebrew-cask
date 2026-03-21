cask "font-tasa-explorer" do
  version "2.011"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tasaexplorer/TASAExplorer%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "TASA Explorer"
  homepage "https://fonts.google.com/specimen/TASA+Explorer"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "TASA Explorer",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "TASAExplorer[wght].ttf"

  # No zap stanza required
end
