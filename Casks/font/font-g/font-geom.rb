cask "font-geom" do
  version "1.102"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/geom"
  name "Geom"
  homepage "https://fonts.google.com/specimen/Geom"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Geom",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Geom-Italic[wght].ttf"
  font "Geom[wght].ttf"

  # No zap stanza required
end
