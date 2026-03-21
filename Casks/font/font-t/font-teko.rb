cask "font-teko" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/teko/Teko%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Teko"
  homepage "https://fonts.google.com/specimen/Teko"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Teko",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Teko[wght].ttf"

  # No zap stanza required
end
