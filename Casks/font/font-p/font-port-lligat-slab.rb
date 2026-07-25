cask "font-port-lligat-slab" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/portlligatslab/PortLligatSlab-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Port Lligat Slab"
  homepage "https://fonts.google.com/specimen/Port+Lligat+Slab"

  font "PortLligatSlab-Regular.ttf"

  # No zap stanza required
end
