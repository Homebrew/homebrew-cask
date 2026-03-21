cask "font-yellowtail" do
  version "001.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/yellowtail/Yellowtail-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Yellowtail"
  homepage "https://fonts.google.com/specimen/Yellowtail"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Yellowtail",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Yellowtail-Regular.ttf"

  # No zap stanza required
end
