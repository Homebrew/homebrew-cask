cask "font-inconsolata-go-nerd-font" do
  version "3.5.0"
  sha256 "fee026067395d636a96afe5132e92e9425bac92643906c6b7e9a63ed187dbeea"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/InconsolataGo.tar.xz"
  name "InconsolataGo Nerd Font (InconsolataGo)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "InconsolataGoNerdFont-Bold.ttf"
  font "InconsolataGoNerdFont-Regular.ttf"
  font "InconsolataGoNerdFontMono-Bold.ttf"
  font "InconsolataGoNerdFontMono-Regular.ttf"
  font "InconsolataGoNerdFontPropo-Bold.ttf"
  font "InconsolataGoNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
