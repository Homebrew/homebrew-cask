cask "font-great-vibes" do
  version "1.103"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/greatvibes/GreatVibes-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Great Vibes"
  homepage "https://fonts.google.com/specimen/Great+Vibes"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Great Vibes",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GreatVibes-Regular.ttf"

  # No zap stanza required
end
