cask "font-3270-nerd-font" do
  version "3.2.1"
  sha256 "0e7cffe10575de3d80df920065ea6f320e86cd515ddd16beed817d284ba44afc"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/3270.zip"
  name "3270 Nerd Font (IBM 3270)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

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
