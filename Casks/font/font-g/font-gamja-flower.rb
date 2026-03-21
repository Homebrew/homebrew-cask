cask "font-gamja-flower" do
  version "3.00"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gamjaflower/GamjaFlower-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Gamja Flower"
  homepage "https://fonts.google.com/specimen/Gamja+Flower"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gamja Flower",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GamjaFlower-Regular.ttf"

  # No zap stanza required
end
