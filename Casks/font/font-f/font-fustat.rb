cask "font-fustat" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fustat/Fustat%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Fustat"
  homepage "https://fonts.google.com/specimen/Fustat"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Fustat",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Fustat[wght].ttf"

  # No zap stanza required
end
