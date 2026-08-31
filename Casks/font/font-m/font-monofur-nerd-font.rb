cask "font-monofur-nerd-font" do
  version "3.5.1"
  sha256 "2df31b59b5144b335de6895e6f841cedfd5c2e336b3b08b004033515e4003be9"

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
