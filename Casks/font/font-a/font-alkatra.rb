cask "font-alkatra" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/alkatra/Alkatra%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Alkatra"
  homepage "https://fonts.google.com/specimen/Alkatra"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Alkatra",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Alkatra[wght].ttf"

  # No zap stanza required
end
