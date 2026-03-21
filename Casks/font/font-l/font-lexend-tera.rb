cask "font-lexend-tera" do
  version "1.007"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lexendtera/LexendTera%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Lexend Tera"
  homepage "https://fonts.google.com/specimen/Lexend+Tera"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Lexend Tera",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LexendTera[wght].ttf"

  # No zap stanza required
end
