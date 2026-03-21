cask "font-wix-madefor-display" do
  version "3.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/wixmadefordisplay/WixMadeforDisplay%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Wix Madefor Display"
  homepage "https://fonts.google.com/specimen/Wix+Madefor+Display"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Wix Madefor Display",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "WixMadeforDisplay[wght].ttf"

  # No zap stanza required
end
