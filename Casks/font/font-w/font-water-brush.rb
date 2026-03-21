cask "font-water-brush" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/waterbrush/WaterBrush-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Water Brush"
  homepage "https://fonts.google.com/specimen/Water+Brush"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Water Brush",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "WaterBrush-Regular.ttf"

  # No zap stanza required
end
