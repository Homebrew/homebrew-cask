cask "font-space-mono" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/spacemono"
  name "Space Mono"
  homepage "https://fonts.google.com/specimen/Space+Mono"

  font "SpaceMono-Bold.ttf"
  font "SpaceMono-BoldItalic.ttf"
  font "SpaceMono-Italic.ttf"
  font "SpaceMono-Regular.ttf"

  # No zap stanza required
end
