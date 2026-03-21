cask "font-allerta-stencil" do
  version "1.02"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/allertastencil/AllertaStencil-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Allerta Stencil"
  homepage "https://fonts.google.com/specimen/Allerta+Stencil"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Allerta Stencil",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AllertaStencil-Regular.ttf"

  # No zap stanza required
end
