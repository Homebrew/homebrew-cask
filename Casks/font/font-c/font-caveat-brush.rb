cask "font-caveat-brush" do
  version "1.096"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/caveatbrush/CaveatBrush-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Caveat Brush"
  homepage "https://fonts.google.com/specimen/Caveat+Brush"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Caveat Brush",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "CaveatBrush-Regular.ttf"

  # No zap stanza required
end
