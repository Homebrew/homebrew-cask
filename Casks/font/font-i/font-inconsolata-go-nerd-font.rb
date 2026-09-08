cask "font-inconsolata-go-nerd-font" do
  version "3.5.1"
  sha256 "479de68fc16fc0c12de1ae1d27bf76a459a072ece092cfc3a440b6d58f7d2700"

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
