cask "font-comic-shanns-mono-nerd-font" do
  version "3.5.1"
  sha256 "0ca2a0aac547d52a395551a19c2bed0d6ee9541feb06c90cbd48f314ec995045"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/ComicShannsMono.tar.xz"
  name "ComicShannsMono Nerd Font (Comic Shanns Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "ComicShannsMonoNerdFont-Bold.otf"
  font "ComicShannsMonoNerdFont-Regular.otf"
  font "ComicShannsMonoNerdFontMono-Bold.otf"
  font "ComicShannsMonoNerdFontMono-Regular.otf"
  font "ComicShannsMonoNerdFontPropo-Bold.otf"
  font "ComicShannsMonoNerdFontPropo-Regular.otf"

  # No zap stanza required
end
