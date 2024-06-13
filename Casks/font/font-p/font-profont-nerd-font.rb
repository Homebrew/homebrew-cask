cask "font-profont-nerd-font" do
  version "3.2.1"
  sha256 "ae5898e790662f261471f3dd263f4357981b23bff68ee2ed1290a64901fa1d87"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/ProFont.zip"
  name "ProFont Nerd Font families (ProFont)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "ProFontIIxNerdFont-Regular.ttf"
  font "ProFontIIxNerdFontMono-Regular.ttf"
  font "ProFontIIxNerdFontPropo-Regular.ttf"
  font "ProFontWindowsNerdFont-Regular.ttf"
  font "ProFontWindowsNerdFontMono-Regular.ttf"
  font "ProFontWindowsNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
