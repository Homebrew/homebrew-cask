cask "font-ojuju" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ojuju/Ojuju%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Ojuju"
  homepage "https://fonts.google.com/specimen/Ojuju"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ojuju",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Ojuju[wght].ttf"

  # No zap stanza required
end
