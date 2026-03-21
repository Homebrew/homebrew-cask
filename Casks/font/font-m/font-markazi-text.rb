cask "font-markazi-text" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/markazitext/MarkaziText%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Markazi Text"
  homepage "https://fonts.google.com/specimen/Markazi+Text"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Markazi Text",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MarkaziText[wght].ttf"

  # No zap stanza required
end
