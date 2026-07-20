cask "font-koh-santepheap" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/kohsantepheap"
  name "Koh Santepheap"
  homepage "https://fonts.google.com/specimen/Koh+Santepheap"

  font "KohSantepheap-Black.ttf"
  font "KohSantepheap-Bold.ttf"
  font "KohSantepheap-Light.ttf"
  font "KohSantepheap-Regular.ttf"
  font "KohSantepheap-Thin.ttf"

  # No zap stanza required
end
