cask "font-snowburst-one" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/snowburstone/SnowburstOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Snowburst One"
  homepage "https://fonts.google.com/specimen/Snowburst+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Snowburst One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SnowburstOne-Regular.ttf"

  # No zap stanza required
end
