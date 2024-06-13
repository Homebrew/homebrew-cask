cask "font-monofur-nerd-font" do
  version "3.2.1"
  sha256 "c63786a1ef1a5b2b0bd5cdd80722d9c8ebe81f3830a5a492b54c07db9022fec6"

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
