cask "font-afacad-flux" do
  version "1.100"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/afacadflux/AfacadFlux%5Bslnt%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Afacad Flux"
  homepage "https://fonts.google.com/specimen/Afacad+Flux"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Afacad Flux",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AfacadFlux[slnt,wght].ttf"

  # No zap stanza required
end
