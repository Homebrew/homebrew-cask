cask "font-arimo-nerd-font" do
  version "3.5.0"
  sha256 "9fdf073a946ebc4be1e122765fcd87c1e45951832f12100c8bba99bc7a4e1a63"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Arimo.tar.xz"
  name "Arimo Nerd Font (Arimo)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "ArimoNerdFont-Bold.ttf"
  font "ArimoNerdFont-BoldItalic.ttf"
  font "ArimoNerdFont-Italic.ttf"
  font "ArimoNerdFont-Regular.ttf"
  font "ArimoNerdFontPropo-Bold.ttf"
  font "ArimoNerdFontPropo-BoldItalic.ttf"
  font "ArimoNerdFontPropo-Italic.ttf"
  font "ArimoNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
