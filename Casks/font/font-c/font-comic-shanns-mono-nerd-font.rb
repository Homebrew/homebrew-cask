cask "font-comic-shanns-mono-nerd-font" do
  version "3.5.0"
  sha256 "3c6550fe0b3877ea9ca27484af0c74e10aea73d155a9dc3250f11ff3dd4601cd"

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
