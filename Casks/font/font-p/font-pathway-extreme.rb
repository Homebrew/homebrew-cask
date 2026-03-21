cask "font-pathway-extreme" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/pathwayextreme"
  name "Pathway Extreme"
  homepage "https://fonts.google.com/specimen/Pathway+Extreme"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Pathway Extreme",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PathwayExtreme-Italic[opsz,wdth,wght].ttf"
  font "PathwayExtreme[opsz,wdth,wght].ttf"

  # No zap stanza required
end
