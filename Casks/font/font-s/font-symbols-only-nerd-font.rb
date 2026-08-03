cask "font-symbols-only-nerd-font" do
  version "3.5.0"
  sha256 "b7ef2283462b435f1fe91d729dc412d5dbe34269dd2c7f4e1d803e4105c8d883"

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
