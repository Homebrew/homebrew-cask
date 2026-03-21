cask "font-lexend-peta" do
  version "1.007"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lexendpeta/LexendPeta%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Lexend Peta"
  homepage "https://fonts.google.com/specimen/Lexend+Peta"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Lexend Peta",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LexendPeta[wght].ttf"

  # No zap stanza required
end
