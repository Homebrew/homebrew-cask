cask "font-coral-pixels" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/coralpixels/CoralPixels-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Coral Pixels"
  homepage "https://fonts.google.com/specimen/Coral+Pixels"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Coral Pixels",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "CoralPixels-Regular.ttf"

  # No zap stanza required
end
