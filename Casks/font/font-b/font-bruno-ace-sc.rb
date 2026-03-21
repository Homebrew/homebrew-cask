cask "font-bruno-ace-sc" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/brunoacesc/BrunoAceSC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bruno Ace SC"
  homepage "https://fonts.google.com/specimen/Bruno+Ace+SC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Bruno Ace SC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BrunoAceSC-Regular.ttf"

  # No zap stanza required
end
