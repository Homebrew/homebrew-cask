cask "font-radio-canada-big" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/radiocanadabig"
  name "Radio Canada Big"
  homepage "https://fonts.google.com/specimen/Radio+Canada+Big"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Radio Canada Big",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "RadioCanadaBig-Italic[wght].ttf"
  font "RadioCanadaBig[wght].ttf"

  # No zap stanza required
end
