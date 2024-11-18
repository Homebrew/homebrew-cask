cask "font-symbols-only-nerd-font" do
  version "3.3.0"
  sha256 "2078603c1e7a2fc2fa9e625ba1c30264d5d7c39907813d89beaa373f73a3a340"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/NerdFontsSymbolsOnly.zip"
  name "Symbols Nerd Font (Symbols Only)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "SymbolsNerdFont-Regular.ttf"
  font "SymbolsNerdFontMono-Regular.ttf"

  # No zap stanza required
end
