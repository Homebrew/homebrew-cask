cask "font-3270-nerd-font" do
  version "3.5.1"
  sha256 "0be3de53807798fc5bdca90eb972225b0b3880bdd9b505121b3c06750a08b698"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/3270.tar.xz"
  name "3270 Nerd Font (IBM 3270)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  no_autobump! because: :bumped_by_upstream

  font "3270NerdFont-Condensed.ttf"
  font "3270NerdFont-Regular.ttf"
  font "3270NerdFont-SemiCondensed.ttf"
  font "3270NerdFontMono-Condensed.ttf"
  font "3270NerdFontMono-Regular.ttf"
  font "3270NerdFontMono-SemiCondensed.ttf"
  font "3270NerdFontPropo-Condensed.ttf"
  font "3270NerdFontPropo-Regular.ttf"
  font "3270NerdFontPropo-SemiCondensed.ttf"

  # No zap stanza required
end
