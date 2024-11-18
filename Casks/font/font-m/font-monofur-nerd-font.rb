cask "font-monofur-nerd-font" do
  version "3.3.0"
  sha256 "d397ff7d7c9ca3472afeded1c9318221bd1dfad574d4d223bdbe8fc75eaa49c0"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Monofur.zip"
  name "Monofur Nerd Font (Monofur)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "MonofurNerdFont-Bold.ttf"
  font "MonofurNerdFont-Italic.ttf"
  font "MonofurNerdFont-Regular.ttf"
  font "MonofurNerdFontMono-Bold.ttf"
  font "MonofurNerdFontMono-Italic.ttf"
  font "MonofurNerdFontMono-Regular.ttf"
  font "MonofurNerdFontPropo-Bold.ttf"
  font "MonofurNerdFontPropo-Italic.ttf"
  font "MonofurNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
