cask "font-inconsolata-lgc-nerd-font" do
  version "3.2.1"
  sha256 "fb0ee60dc2db59e07c72953ec303e2f3d2146b32924e0ab066786b0697a1efe6"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/InconsolataLGC.zip"
  name "Inconsolata LGC Nerd Font (Inconsolata LGC)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

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
