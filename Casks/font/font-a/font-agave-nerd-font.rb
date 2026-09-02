cask "font-agave-nerd-font" do
  version "3.5.1"
  sha256 "0b29420ed47a4cc9bc2743d454ef17ea645ae31e6c348e86154d994b6ccc756e"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Agave.tar.xz"
  name "Agave Nerd Font (Agave)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "AgaveNerdFont-Bold.ttf"
  font "AgaveNerdFont-Regular.ttf"
  font "AgaveNerdFontMono-Bold.ttf"
  font "AgaveNerdFontMono-Regular.ttf"
  font "AgaveNerdFontPropo-Bold.ttf"
  font "AgaveNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
