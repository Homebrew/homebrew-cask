cask "font-agave-nerd-font" do
  version "3.2.1"
  sha256 "248fdd6944f635ab1e8094cfd161d2408e64b7ff444401709734c73bdf6eb9cc"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Agave.zip"
  name "Agave Nerd Font (Agave)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "AgaveNerdFont-Bold.ttf"
  font "AgaveNerdFont-Regular.ttf"
  font "AgaveNerdFontMono-Bold.ttf"
  font "AgaveNerdFontMono-Regular.ttf"
  font "AgaveNerdFontPropo-Bold.ttf"
  font "AgaveNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
