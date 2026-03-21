cask "font-lexend-deca" do
  version "1.007"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lexenddeca/LexendDeca%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Lexend Deca"
  homepage "https://fonts.google.com/specimen/Lexend+Deca"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Lexend Deca",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LexendDeca[wght].ttf"

  # No zap stanza required
end
