cask "font-outfit" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/outfit/Outfit%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Outfit"
  homepage "https://fonts.google.com/specimen/Outfit"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Outfit",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Outfit[wght].ttf"

  # No zap stanza required
end
