cask "font-montecarlo" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/montecarlo/MonteCarlo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "MonteCarlo"
  homepage "https://fonts.google.com/specimen/MonteCarlo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "MonteCarlo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MonteCarlo-Regular.ttf"

  # No zap stanza required
end
