cask "font-monoid-nerd-font" do
  version "3.5.0"
  sha256 "3e1f449f091eed114a8f85f3cf4ba4d445a4071081323a3b63c1abcf47a2ae58"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Monoid.tar.xz"
  name "Monoid Nerd Font (Monoid)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "MonoidNerdFont-Bold.ttf"
  font "MonoidNerdFont-Italic.ttf"
  font "MonoidNerdFont-Regular.ttf"
  font "MonoidNerdFont-Retina.ttf"
  font "MonoidNerdFontMono-Bold.ttf"
  font "MonoidNerdFontMono-Italic.ttf"
  font "MonoidNerdFontMono-Regular.ttf"
  font "MonoidNerdFontMono-Retina.ttf"
  font "MonoidNerdFontPropo-Bold.ttf"
  font "MonoidNerdFontPropo-Italic.ttf"
  font "MonoidNerdFontPropo-Regular.ttf"
  font "MonoidNerdFontPropo-Retina.ttf"

  # No zap stanza required
end
