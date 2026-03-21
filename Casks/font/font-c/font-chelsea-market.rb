cask "font-chelsea-market" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/chelseamarket/ChelseaMarket-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Chelsea Market"
  homepage "https://fonts.google.com/specimen/Chelsea+Market"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Chelsea Market",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ChelseaMarket-Regular.ttf"

  # No zap stanza required
end
