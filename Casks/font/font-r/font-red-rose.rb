cask "font-red-rose" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/redrose/RedRose%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Red Rose"
  homepage "https://fonts.google.com/specimen/Red+Rose"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Red Rose",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RedRose[wght].ttf"

  # No zap stanza required
end
