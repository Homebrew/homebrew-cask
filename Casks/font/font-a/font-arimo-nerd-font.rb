cask "font-arimo-nerd-font" do
  version "3.5.1"
  sha256 "997706a5e98185d9b0b74ef9593c65c6c3bf775721ade614f0bd156aeca6bace"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Arimo.tar.xz"
  name "Arimo Nerd Font (Arimo)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "ArimoNerdFont-Bold.ttf"
  font "ArimoNerdFont-BoldItalic.ttf"
  font "ArimoNerdFont-Italic.ttf"
  font "ArimoNerdFont-Regular.ttf"
  font "ArimoNerdFontPropo-Bold.ttf"
  font "ArimoNerdFontPropo-BoldItalic.ttf"
  font "ArimoNerdFontPropo-Italic.ttf"
  font "ArimoNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
