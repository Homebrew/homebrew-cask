cask "font-sankofa-display" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sankofadisplay/SankofaDisplay-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sankofa Display"
  homepage "https://fonts.google.com/specimen/Sankofa+Display"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sankofa Display",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SankofaDisplay-Regular.ttf"

  # No zap stanza required
end
