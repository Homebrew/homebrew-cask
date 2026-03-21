cask "font-moon-dance" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/moondance/MoonDance-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Moon Dance"
  homepage "https://fonts.google.com/specimen/Moon+Dance"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Moon Dance",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MoonDance-Regular.ttf"

  # No zap stanza required
end
