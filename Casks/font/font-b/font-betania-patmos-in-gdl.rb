cask "font-betania-patmos-in-gdl" do
  version "11.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/betaniapatmosingdl/BetaniaPatmosInGDL-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Betania Patmos In GDL"
  homepage "https://fonts.google.com/specimen/Betania+Patmos+In+GDL"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Betania Patmos In GDL",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BetaniaPatmosInGDL-Regular.ttf"

  # No zap stanza required
end
