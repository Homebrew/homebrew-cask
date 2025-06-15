cask "font-fira-mono-nerd-font" do
  version "3.4.0"
  sha256 "ef37b99164614ad518721a8f3b1a1f654bac060dba820e73fa3b3e4cce8841e4"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/FiraMono.zip"
  name "FiraMono Nerd Font (Fira)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  no_autobump! because: :bumped_by_upstream

  livecheck do
    url :url
    strategy :github_latest
  end

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
