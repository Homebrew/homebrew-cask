cask "font-fira-mono-nerd-font" do
  version "3.5.0"
  sha256 "d66833973f8331b7f8bfbf0cb1708765b86e1fe7fbe398c1c54f42f824969cc2"

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
