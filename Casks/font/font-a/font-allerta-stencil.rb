cask "font-allerta-stencil" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/allertastencil/AllertaStencil-Regular.ttf"
  name "Allerta Stencil"
  homepage "https://fonts.google.com/specimen/Allerta+Stencil"

  font "AllertaStencil-Regular.ttf"

  # No zap stanza required
end
