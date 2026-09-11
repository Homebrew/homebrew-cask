cask "font-fira-mono-nerd-font" do
  version "3.5.1"
  sha256 "e3112075b65d9a900ef6ca562c30f1b5eb1d1a928e97de7469962ac8c45e93d6"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/FiraMono.tar.xz"
  name "FiraMono Nerd Font (Fira)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "FiraMonoNerdFont-Bold.otf"
  font "FiraMonoNerdFont-Medium.otf"
  font "FiraMonoNerdFont-Regular.otf"
  font "FiraMonoNerdFontMono-Bold.otf"
  font "FiraMonoNerdFontMono-Medium.otf"
  font "FiraMonoNerdFontMono-Regular.otf"
  font "FiraMonoNerdFontPropo-Bold.otf"
  font "FiraMonoNerdFontPropo-Medium.otf"
  font "FiraMonoNerdFontPropo-Regular.otf"

  # No zap stanza required
end
