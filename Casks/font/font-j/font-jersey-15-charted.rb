cask "font-jersey-15-charted" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jersey15charted/Jersey15Charted-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jersey 15 Charted"
  homepage "https://fonts.google.com/specimen/Jersey+15+Charted"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Jersey 15 Charted",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Jersey15Charted-Regular.ttf"

  # No zap stanza required
end
