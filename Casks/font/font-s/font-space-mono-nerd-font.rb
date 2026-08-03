cask "font-space-mono-nerd-font" do
  version "3.5.0"
  sha256 "19695ebda56e17762a08e50de3fb6a1ee03a9b7658abe37e7ff33f0a9862e845"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/SpaceMono.tar.xz"
  name "SpaceMono Nerd Font (Space Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "SpaceMonoNerdFont-Bold.ttf"
  font "SpaceMonoNerdFont-BoldItalic.ttf"
  font "SpaceMonoNerdFont-Italic.ttf"
  font "SpaceMonoNerdFont-Regular.ttf"
  font "SpaceMonoNerdFontMono-Bold.ttf"
  font "SpaceMonoNerdFontMono-BoldItalic.ttf"
  font "SpaceMonoNerdFontMono-Italic.ttf"
  font "SpaceMonoNerdFontMono-Regular.ttf"
  font "SpaceMonoNerdFontPropo-Bold.ttf"
  font "SpaceMonoNerdFontPropo-BoldItalic.ttf"
  font "SpaceMonoNerdFontPropo-Italic.ttf"
  font "SpaceMonoNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
