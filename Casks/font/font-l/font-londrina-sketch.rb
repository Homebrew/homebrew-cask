cask "font-londrina-sketch" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/londrinasketch/LondrinaSketch-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Londrina Sketch"
  homepage "https://fonts.google.com/specimen/Londrina+Sketch"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Londrina Sketch",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LondrinaSketch-Regular.ttf"

  # No zap stanza required
end
