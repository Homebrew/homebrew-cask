cask "font-lexend-giga" do
  version "1.007"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lexendgiga/LexendGiga%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Lexend Giga"
  homepage "https://fonts.google.com/specimen/Lexend+Giga"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Lexend Giga",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LexendGiga[wght].ttf"

  # No zap stanza required
end
