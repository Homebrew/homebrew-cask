cask "font-vesper-libre" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/vesperlibre"
  name "Vesper Libre"
  homepage "https://fonts.google.com/specimen/Vesper+Libre"

  font "VesperLibre-Bold.ttf"
  font "VesperLibre-Heavy.ttf"
  font "VesperLibre-Medium.ttf"
  font "VesperLibre-Regular.ttf"

  # No zap stanza required
end
