cask "font-blaka-ink" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/blakaink/BlakaInk-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Blaka Ink"
  homepage "https://fonts.google.com/specimen/Blaka+Ink"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Blaka Ink",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "BlakaInk-Regular.ttf"

  # No zap stanza required
end
