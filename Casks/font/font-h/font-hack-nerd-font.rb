cask "font-hack-nerd-font" do
  version "3.5.1"
  sha256 "cdd389472e10e2261520140ff1b382b4f8a226af5fd0b2735b975d31151d9c3c"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Hack.tar.xz"
  name "Hack Nerd Font (Hack)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "HackNerdFont-Bold.ttf"
  font "HackNerdFont-BoldItalic.ttf"
  font "HackNerdFont-Italic.ttf"
  font "HackNerdFont-Regular.ttf"
  font "HackNerdFontMono-Bold.ttf"
  font "HackNerdFontMono-BoldItalic.ttf"
  font "HackNerdFontMono-Italic.ttf"
  font "HackNerdFontMono-Regular.ttf"
  font "HackNerdFontPropo-Bold.ttf"
  font "HackNerdFontPropo-BoldItalic.ttf"
  font "HackNerdFontPropo-Italic.ttf"
  font "HackNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
