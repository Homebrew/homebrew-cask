cask "font-gloria-hallelujah" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gloriahallelujah/GloriaHallelujah.ttf",
      verified: "github.com/google/fonts/"
  name "Gloria Hallelujah"
  homepage "https://fonts.google.com/specimen/Gloria+Hallelujah"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Gloria Hallelujah",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "GloriaHallelujah.ttf"

  # No zap stanza required
end
