cask "font-3270-nerd-font" do
  version "3.5.0"
  sha256 "41999d601d1fa41bc57c3e7e6050a137265d0f2d5770cf6218e4a2577df47ed3"

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
