cask "font-lexend-exa" do
  version "1.007"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lexendexa/LexendExa%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Lexend Exa"
  homepage "https://fonts.google.com/specimen/Lexend+Exa"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Lexend Exa",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LexendExa[wght].ttf"

  # No zap stanza required
end
