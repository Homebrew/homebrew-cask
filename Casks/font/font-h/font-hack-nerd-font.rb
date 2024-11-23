cask "font-hack-nerd-font" do
  version "3.3.0"
  sha256 "a09e154605eff625b0da3bdf242d64d97cec3d6ee90fb9f91a531064e33c7b8d"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Hack.zip"
  name "Hack Nerd Font (Hack)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

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
