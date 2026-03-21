cask "font-kolker-brush" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/kolkerbrush/KolkerBrush-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Kolker Brush"
  homepage "https://fonts.google.com/specimen/Kolker+Brush"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Kolker Brush",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "KolkerBrush-Regular.ttf"

  # No zap stanza required
end
