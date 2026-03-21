cask "font-over-the-rainbow" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/overtherainbow/OvertheRainbow.ttf",
      verified: "github.com/google/fonts/"
  name "Over the Rainbow"
  homepage "https://fonts.google.com/specimen/Over+the+Rainbow"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Over the Rainbow",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "OvertheRainbow.ttf"

  # No zap stanza required
end
