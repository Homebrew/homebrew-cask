cask "font-radio-canada-big" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/radiocanadabig"
  name "Radio Canada Big"
  desc "Variable font with a weight axis that spans from regular (400) to bold (700)"
  homepage "https://fonts.google.com/specimen/Radio+Canada+Big"

  font "RadioCanadaBig-Italic[wght].ttf"
  font "RadioCanadaBig[wght].ttf"

  # No zap stanza required
end
