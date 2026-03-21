cask "font-menbere" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/menbere/Menbere%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Menbere"
  homepage "https://fonts.google.com/specimen/Menbere"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Menbere",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Menbere[wght].ttf"

  # No zap stanza required
end
