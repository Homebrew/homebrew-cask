cask "font-jersey-25-charted" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jersey25charted/Jersey25Charted-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jersey 25 Charted"
  homepage "https://fonts.google.com/specimen/Jersey+25+Charted"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Jersey 25 Charted",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Jersey25Charted-Regular.ttf"

  # No zap stanza required
end
