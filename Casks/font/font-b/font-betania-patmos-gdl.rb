cask "font-betania-patmos-gdl" do
  version "11.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/betaniapatmosgdl/BetaniaPatmosGDL-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Betania Patmos GDL"
  homepage "https://fonts.google.com/specimen/Betania+Patmos+GDL"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Betania Patmos GDL",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BetaniaPatmosGDL-Regular.ttf"

  # No zap stanza required
end
