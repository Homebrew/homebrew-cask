cask "font-inconsolata-lgc-nerd-font" do
  version "3.5.0"
  sha256 "989f6bd8907e5316fab8cecaa730d843495f6a181cc8ef638e5caab6df1c6f73"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/InconsolataLGC.tar.xz"
  name "Inconsolata LGC Nerd Font (Inconsolata LGC)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "InconsolataLGCNerdFont-Bold.ttf"
  font "InconsolataLGCNerdFont-BoldItalic.ttf"
  font "InconsolataLGCNerdFont-Italic.ttf"
  font "InconsolataLGCNerdFont-Regular.ttf"
  font "InconsolataLGCNerdFontMono-Bold.ttf"
  font "InconsolataLGCNerdFontMono-BoldItalic.ttf"
  font "InconsolataLGCNerdFontMono-Italic.ttf"
  font "InconsolataLGCNerdFontMono-Regular.ttf"
  font "InconsolataLGCNerdFontPropo-Bold.ttf"
  font "InconsolataLGCNerdFontPropo-BoldItalic.ttf"
  font "InconsolataLGCNerdFontPropo-Italic.ttf"
  font "InconsolataLGCNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
