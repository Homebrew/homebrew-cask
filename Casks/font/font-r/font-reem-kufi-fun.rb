cask "font-reem-kufi-fun" do
  version "1.899"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/reemkufifun/ReemKufiFun%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Reem Kufi Fun"
  homepage "https://fonts.google.com/specimen/Reem+Kufi+Fun"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Reem Kufi Fun",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ReemKufiFun[wght].ttf"

  # No zap stanza required
end
