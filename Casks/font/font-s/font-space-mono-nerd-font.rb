cask "font-space-mono-nerd-font" do
  version "3.3.0"
  sha256 "1bad6d29b3a4a955f01a3e2cb2fdf92ad11d817914c05fdbfce70126770ebc25"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/SpaceMono.zip"
  name "SpaceMono Nerd Font (Space Mono)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

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
