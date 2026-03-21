cask "font-cabin-sketch" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/cabinsketch"
  name "Cabin Sketch"
  homepage "https://fonts.google.com/specimen/Cabin+Sketch"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cabin Sketch",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "CabinSketch-Bold.ttf"
  font "CabinSketch-Regular.ttf"

  # No zap stanza required
end
