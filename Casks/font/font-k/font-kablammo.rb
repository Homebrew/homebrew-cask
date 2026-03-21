cask "font-kablammo" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kablammo/Kablammo%5BMORF%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Kablammo"
  homepage "https://fonts.google.com/specimen/Kablammo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kablammo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Kablammo[MORF].ttf"

  # No zap stanza required
end
