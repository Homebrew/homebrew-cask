cask "font-baskervville-sc" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/baskervvillesc/BaskervvilleSC%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Baskervville SC"
  homepage "https://fonts.google.com/specimen/Baskervville+SC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Baskervville SC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BaskervvilleSC[wght].ttf"

  # No zap stanza required
end
