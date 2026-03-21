cask "font-stint-ultra-condensed" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/stintultracondensed/StintUltraCondensed-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Stint Ultra Condensed"
  homepage "https://fonts.google.com/specimen/Stint+Ultra+Condensed"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Stint Ultra Condensed",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "StintUltraCondensed-Regular.ttf"

  # No zap stanza required
end
