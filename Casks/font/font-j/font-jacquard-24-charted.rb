cask "font-jacquard-24-charted" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jacquard24charted/Jacquard24Charted-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jacquard 24 Charted"
  homepage "https://fonts.google.com/specimen/Jacquard+24+Charted"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Jacquard 24 Charted",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Jacquard24Charted-Regular.ttf"

  # No zap stanza required
end
