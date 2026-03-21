cask "font-asta-sans" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/astasans/AstaSans%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Asta Sans"
  homepage "https://fonts.google.com/specimen/Asta+Sans"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Asta Sans",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AstaSans[wght].ttf"

  # No zap stanza required
end
