cask "font-fantasque-sans-mono-nerd-font" do
  version "3.2.1"
  sha256 "8ea52f3ee930a64a086b0ca95f1cc1553034de7431f4c1813d239bf6b65532df"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/FantasqueSansMono.zip"
  name "FantasqueSansM Nerd Font (Fantasque Sans Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "FantasqueSansMNerdFont-Bold.ttf"
  font "FantasqueSansMNerdFont-BoldItalic.ttf"
  font "FantasqueSansMNerdFont-Italic.ttf"
  font "FantasqueSansMNerdFont-Regular.ttf"
  font "FantasqueSansMNerdFontMono-Bold.ttf"
  font "FantasqueSansMNerdFontMono-BoldItalic.ttf"
  font "FantasqueSansMNerdFontMono-Italic.ttf"
  font "FantasqueSansMNerdFontMono-Regular.ttf"
  font "FantasqueSansMNerdFontPropo-Bold.ttf"
  font "FantasqueSansMNerdFontPropo-BoldItalic.ttf"
  font "FantasqueSansMNerdFontPropo-Italic.ttf"
  font "FantasqueSansMNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
