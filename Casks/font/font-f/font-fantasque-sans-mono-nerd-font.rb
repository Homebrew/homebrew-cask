cask "font-fantasque-sans-mono-nerd-font" do
  version "3.3.0"
  sha256 "849a660ce68cfba5b63dd8ee9cf90ed572f50579b8a098c2a2218559e6293fe5"

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
