cask "font-tasa-orbiter" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tasaorbiter/TASAOrbiter%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "TASA Orbiter"
  homepage "https://fonts.google.com/specimen/TASA+Orbiter"

  font "TASAOrbiter[wght].ttf"

  # No zap stanza required
end
