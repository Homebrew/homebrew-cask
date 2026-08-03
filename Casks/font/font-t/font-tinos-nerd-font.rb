cask "font-tinos-nerd-font" do
  version "3.5.0"
  sha256 "277ce05aba5482769a4568a2a0dc8b6a6acbb619ed97ea0d91617eabbdad7111"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Tinos.tar.xz"
  name "Tinos Nerd Font (Tinos)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "TinosNerdFont-Bold.ttf"
  font "TinosNerdFont-BoldItalic.ttf"
  font "TinosNerdFont-Italic.ttf"
  font "TinosNerdFont-Regular.ttf"
  font "TinosNerdFontPropo-Bold.ttf"
  font "TinosNerdFontPropo-BoldItalic.ttf"
  font "TinosNerdFontPropo-Italic.ttf"
  font "TinosNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
