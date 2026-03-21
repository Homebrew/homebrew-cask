cask "font-jersey-20-charted" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jersey20charted/Jersey20Charted-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jersey 20 Charted"
  homepage "https://fonts.google.com/specimen/Jersey+20+Charted"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Jersey 20 Charted",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Jersey20Charted-Regular.ttf"

  # No zap stanza required
end
