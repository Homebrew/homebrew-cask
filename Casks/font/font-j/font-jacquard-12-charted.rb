cask "font-jacquard-12-charted" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jacquard12charted/Jacquard12Charted-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jacquard 12 Charted"
  homepage "https://fonts.google.com/specimen/Jacquard+12+Charted"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Jacquard 12 Charted",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Jacquard12Charted-Regular.ttf"

  # No zap stanza required
end
