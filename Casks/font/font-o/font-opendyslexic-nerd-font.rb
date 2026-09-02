cask "font-opendyslexic-nerd-font" do
  version "3.5.1"
  sha256 "5f3b8c84ea93982c28fa11d74a6b7e9d90f13f6eb3e228c4603007d9c62aea78"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/OpenDyslexic.tar.xz"
  name "OpenDyslexic Nerd Font families (OpenDyslexic)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "OpenDyslexicAltNerdFont-Bold.otf"
  font "OpenDyslexicAltNerdFont-BoldItalic.otf"
  font "OpenDyslexicAltNerdFont-Italic.otf"
  font "OpenDyslexicAltNerdFont-Regular.otf"
  font "OpenDyslexicAltNerdFontPropo-Bold.otf"
  font "OpenDyslexicAltNerdFontPropo-BoldItalic.otf"
  font "OpenDyslexicAltNerdFontPropo-Italic.otf"
  font "OpenDyslexicAltNerdFontPropo-Regular.otf"
  font "OpenDyslexicMNerdFont-Regular.otf"
  font "OpenDyslexicMNerdFontMono-Regular.otf"
  font "OpenDyslexicMNerdFontPropo-Regular.otf"
  font "OpenDyslexicNerdFont-Bold.otf"
  font "OpenDyslexicNerdFont-BoldItalic.otf"
  font "OpenDyslexicNerdFont-Italic.otf"
  font "OpenDyslexicNerdFont-Regular.otf"
  font "OpenDyslexicNerdFontPropo-Bold.otf"
  font "OpenDyslexicNerdFontPropo-BoldItalic.otf"
  font "OpenDyslexicNerdFontPropo-Italic.otf"
  font "OpenDyslexicNerdFontPropo-Regular.otf"

  # No zap stanza required
end
