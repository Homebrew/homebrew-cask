cask "font-sirin-stencil" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sirinstencil/SirinStencil-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sirin Stencil"
  homepage "https://fonts.google.com/specimen/Sirin+Stencil"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sirin Stencil",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SirinStencil-Regular.ttf"

  # No zap stanza required
end
