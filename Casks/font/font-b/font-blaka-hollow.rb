cask "font-blaka-hollow" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/blakahollow/BlakaHollow-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Blaka Hollow"
  homepage "https://fonts.google.com/specimen/Blaka+Hollow"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Blaka Hollow",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BlakaHollow-Regular.ttf"

  # No zap stanza required
end
