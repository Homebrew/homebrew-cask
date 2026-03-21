cask "font-alfa-slab-one" do
  version "2.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/alfaslabone/AlfaSlabOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Alfa Slab One"
  homepage "https://fonts.google.com/specimen/Alfa+Slab+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Alfa Slab One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AlfaSlabOne-Regular.ttf"

  # No zap stanza required
end
