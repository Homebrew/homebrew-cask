cask "font-stint-ultra-expanded" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/stintultraexpanded/StintUltraExpanded-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Stint Ultra Expanded"
  homepage "https://fonts.google.com/specimen/Stint+Ultra+Expanded"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Stint Ultra Expanded",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "StintUltraExpanded-Regular.ttf"

  # No zap stanza required
end
