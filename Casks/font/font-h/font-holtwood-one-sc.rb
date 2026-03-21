cask "font-holtwood-one-sc" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/holtwoodonesc/HoltwoodOneSC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Holtwood One SC"
  homepage "https://fonts.google.com/specimen/Holtwood+One+SC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Holtwood One SC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "HoltwoodOneSC-Regular.ttf"

  # No zap stanza required
end
