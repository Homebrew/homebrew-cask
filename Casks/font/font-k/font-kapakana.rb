cask "font-kapakana" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kapakana/Kapakana%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Kapakana"
  homepage "https://fonts.google.com/specimen/Kapakana"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kapakana",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Kapakana[wght].ttf"

  # No zap stanza required
end
