cask "font-vesper-libre" do
  version "1.058"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/vesperlibre"
  name "Vesper Libre"
  homepage "https://fonts.google.com/specimen/Vesper+Libre"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Vesper Libre",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "VesperLibre-Bold.ttf"
  font "VesperLibre-Heavy.ttf"
  font "VesperLibre-Medium.ttf"
  font "VesperLibre-Regular.ttf"

  # No zap stanza required
end
