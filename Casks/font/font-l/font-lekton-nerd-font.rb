cask "font-lekton-nerd-font" do
  version "3.3.0"
  sha256 "f06a33458f12bb64996a8be7026f8de6434fb7b52c923cbbf0a9b3ebfa76f2ca"

  url "https://github.com/ryanoasis/nerd-fonts/releases/download/v#{version}/Lekton.zip"
  name "Lekton Nerd Font (Lekton)"
  homepage "https://github.com/ryanoasis/nerd-fonts"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "LektonNerdFont-Bold.ttf"
  font "LektonNerdFont-Italic.ttf"
  font "LektonNerdFont-Regular.ttf"
  font "LektonNerdFontMono-Bold.ttf"
  font "LektonNerdFontMono-Italic.ttf"
  font "LektonNerdFontMono-Regular.ttf"
  font "LektonNerdFontPropo-Bold.ttf"
  font "LektonNerdFontPropo-Italic.ttf"
  font "LektonNerdFontPropo-Regular.ttf"

  # No zap stanza required
end
