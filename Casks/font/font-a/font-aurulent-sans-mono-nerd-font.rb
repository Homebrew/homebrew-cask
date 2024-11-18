cask "font-aurulent-sans-mono-nerd-font" do
  version "3.3.0"
  sha256 "5ad105682364f9887fc974703a4021b4a3a338b24768bc3ce01a6fbfa9f37672"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/AurulentSansMono.zip"
  name "AurulentSansM Nerd Font (Aurulent Sans Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "AurulentSansMNerdFont-Regular.otf"
  font "AurulentSansMNerdFontMono-Regular.otf"
  font "AurulentSansMNerdFontPropo-Regular.otf"

  # No zap stanza required
end
