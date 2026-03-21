cask "font-cairo-play" do
  version "3.130"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cairoplay/CairoPlay%5Bslnt%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Cairo Play"
  homepage "https://fonts.google.com/specimen/Cairo+Play"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cairo Play",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "CairoPlay[slnt,wght].ttf"

  # No zap stanza required
end
