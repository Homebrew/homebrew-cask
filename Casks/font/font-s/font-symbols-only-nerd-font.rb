cask "font-symbols-only-nerd-font" do
  version "3.5.1"
  sha256 "01172f37db8543edb102e5cb5c64101c9f4686630804d49b419aa07b23a69996"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/NerdFontsSymbolsOnly.tar.xz"
  name "Symbols Nerd Font (Symbols Only)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "SymbolsNerdFont-Regular.ttf"
  font "SymbolsNerdFontMono-Regular.ttf"

  # No zap stanza required
end
