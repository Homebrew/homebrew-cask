cask "font-pathway-extreme" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/pathwayextreme"
  name "Pathway Extreme"
  desc "Very popular historic typographic style"
  homepage "https://fonts.google.com/specimen/Pathway+Extreme"

  font "PathwayExtreme-Italic[opsz,wdth,wght].ttf"
  font "PathwayExtreme[opsz,wdth,wght].ttf"

  # No zap stanza required
end
