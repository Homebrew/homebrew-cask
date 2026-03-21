cask "font-sixtyfour" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sixtyfour/Sixtyfour%5BBLED%2CSCAN%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Sixtyfour"
  homepage "https://fonts.google.com/specimen/Sixtyfour"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sixtyfour",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Sixtyfour[BLED,SCAN].ttf"

  # No zap stanza required
end
