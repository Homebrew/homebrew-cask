cask "font-gabarito" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gabarito/Gabarito%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Gabarito"
  homepage "https://fonts.google.com/specimen/Gabarito"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gabarito",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Gabarito[wght].ttf"

  # No zap stanza required
end
