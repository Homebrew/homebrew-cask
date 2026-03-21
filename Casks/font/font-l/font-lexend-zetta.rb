cask "font-lexend-zetta" do
  version "1.007"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lexendzetta/LexendZetta%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Lexend Zetta"
  homepage "https://fonts.google.com/specimen/Lexend+Zetta"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Lexend Zetta",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LexendZetta[wght].ttf"

  # No zap stanza required
end
