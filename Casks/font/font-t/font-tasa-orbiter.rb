cask "font-tasa-orbiter" do
  version "2.011"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tasaorbiter/TASAOrbiter%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "TASA Orbiter"
  homepage "https://fonts.google.com/specimen/TASA+Orbiter"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "TASA Orbiter",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "TASAOrbiter[wght].ttf"

  # No zap stanza required
end
