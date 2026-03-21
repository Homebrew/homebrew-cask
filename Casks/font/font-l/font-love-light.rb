cask "font-love-light" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lovelight/LoveLight-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Love Light"
  homepage "https://fonts.google.com/specimen/Love+Light"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Love Light",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LoveLight-Regular.ttf"

  # No zap stanza required
end
