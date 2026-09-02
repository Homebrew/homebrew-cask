cask "font-profont-nerd-font" do
  version "3.5.1"
  sha256 "186917bff8fe3d7aaf6a0151e7caf76ef2962f2dd825454dc42c3c7285c8f821"

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
