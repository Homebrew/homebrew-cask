cask "font-sirin-stencil" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sirinstencil/SirinStencil-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sirin Stencil"
  homepage "https://fonts.google.com/specimen/Sirin+Stencil"

  font "SirinStencil-Regular.ttf"

  # No zap stanza required
end
