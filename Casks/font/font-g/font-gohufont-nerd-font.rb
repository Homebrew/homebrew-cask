cask "font-gohufont-nerd-font" do
  version "3.3.0"
  sha256 "e3af23eb736c224b4a0aaf952c41158e70c423a74cf0958582fda5ce869d3e79"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Gohu.zip"
  name "GohuFont  Nerd Font families (Gohu)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "GohuFont11NerdFont-Regular.ttf"
  font "GohuFont11NerdFontMono-Regular.ttf"
  font "GohuFont11NerdFontPropo-Regular.ttf"
  font "GohuFont14NerdFont-Regular.ttf"
  font "GohuFont14NerdFontMono-Regular.ttf"
  font "GohuFont14NerdFontPropo-Regular.ttf"
  font "GohuFontuni11NerdFont-Regular.ttf"
  font "GohuFontuni11NerdFontMono-Regular.ttf"
  font "GohuFontuni11NerdFontPropo-Regular.ttf"
  font "GohuFontuni14NerdFont-Regular.ttf"
  font "GohuFontuni14NerdFontMono-Regular.ttf"
  font "GohuFontuni14NerdFontPropo-Regular.ttf"

  # No zap stanza required
end
