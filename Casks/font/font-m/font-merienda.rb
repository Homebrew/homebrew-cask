cask "font-merienda" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/merienda/Merienda%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Merienda"
  homepage "https://fonts.google.com/specimen/Merienda"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Merienda",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Merienda[wght].ttf"

  # No zap stanza required
end
