cask "font-grenze-gotisch" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/grenzegotisch/GrenzeGotisch%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Grenze Gotisch"
  homepage "https://fonts.google.com/specimen/Grenze+Gotisch"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Grenze Gotisch",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GrenzeGotisch[wght].ttf"

  # No zap stanza required
end
