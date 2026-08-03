cask "font-monofur-nerd-font" do
  version "3.5.0"
  sha256 "1a0b9ba4a504f6a6547069938b9deb8c2a2e8dbf0704102a2e5c3248cf2d28ed"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Monofur.tar.xz"
  name "Monofur Nerd Font (Monofur)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "MonofurNerdFont-Bold.ttf"
  font "MonofurNerdFont-Italic.ttf"
  font "MonofurNerdFont-Regular.ttf"
  font "MonofurNerdFontMono-Bold.ttf"
  font "MonofurNerdFontMono-Italic.ttf"
  font "MonofurNerdFontMono-Regular.ttf"
  font "MonofurNerdFontPropo-Bold.ttf"
  font "MonofurNerdFontPropo-Italic.ttf"
  font "MonofurNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
