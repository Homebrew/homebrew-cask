cask "font-profont-nerd-font" do
  version "3.5.0"
  sha256 "fa30a93281b412176af699b231b6dadf6313835bb9ea986bf977d04676afe07f"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/ProFont.tar.xz"
  name "ProFont Nerd Font families (ProFont)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "ProFontIIxNerdFont-Regular.ttf"
  font "ProFontIIxNerdFontMono-Regular.ttf"
  font "ProFontIIxNerdFontPropo-Regular.ttf"
  font "ProFontWindowsNerdFont-Regular.ttf"
  font "ProFontWindowsNerdFontMono-Regular.ttf"
  font "ProFontWindowsNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
