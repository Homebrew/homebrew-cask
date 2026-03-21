cask "font-praise" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/praise/Praise-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Praise"
  homepage "https://fonts.google.com/specimen/Praise"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Praise",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Praise-Regular.ttf"

  # No zap stanza required
end
