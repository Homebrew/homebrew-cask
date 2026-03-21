cask "font-vibes" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/vibes/Vibes-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Vibes"
  homepage "https://fonts.google.com/specimen/Vibes"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Vibes",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Vibes-Regular.ttf"

  # No zap stanza required
end
