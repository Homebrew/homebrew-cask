cask "font-bigblue-terminal-nerd-font" do
  version "3.5.0"
  sha256 "74ee813120bcd0836bfc460a27c93013d9ae14f85d154b9f441056ce9bbba415"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/BigBlueTerminal.tar.xz"
  name "BigBlueTerm Nerd Font families (BigBlue Terminal)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "BigBlueTerm437NerdFont-Regular.ttf"
  font "BigBlueTerm437NerdFontMono-Regular.ttf"
  font "BigBlueTerm437NerdFontPropo-Regular.ttf"
  font "BigBlueTermPlusNerdFont-Regular.ttf"
  font "BigBlueTermPlusNerdFontMono-Regular.ttf"
  font "BigBlueTermPlusNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
